package org.fh.mobile.task;

import java.net.URLDecoder;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.session.Session;
import org.fh.controller.act.AcBusinessController;
import org.fh.entity.Page;
import org.fh.entity.PageData;
import org.fh.service.act.HiprocdefService;
import org.fh.service.act.RuprocdefService;
import org.fh.service.system.FhsmsService;
import org.fh.util.Const;
import org.fh.util.DateUtil;
import org.fh.util.ImageAnd64Binary;
import org.fh.util.Jurisdiction;
import org.fh.util.PathUtil;
import org.fh.util.Tools;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 说明：任务管理(手机端)
 * 作者：FH Admin Q31-35-96790
 * 官网：www.fhadmin.org
 */
@Controller
@RequestMapping("/mobiletask")
public class MobTaskController extends AcBusinessController {
	
	@Autowired
	private RuprocdefService ruprocdefService;
	
	@Autowired
	private FhsmsService fhsmsService;
	
	@Autowired
	private HiprocdefService hiprocdefService;
	
	/**待办任务列表
	 * @param page
	 * @throws Exception
	 */
	@RequestMapping(value="/list")
	@RequiresPermissions("rutask:list")
	public String list(Page page, Model model) throws Exception{
		PageData pd = new PageData();
		pd = this.getPageData();
		String KEYWORDS = pd.getString("keywords");						//关键词检索条件
		if(Tools.notEmpty(KEYWORDS))pd.put("keywords", KEYWORDS.trim());
		pd.put("USERNAME", Jurisdiction.getUsername()); 				//查询当前用户的任务(用户名查询)
		pd.put("RNUMBERS", Jurisdiction.getRnumbers()); 				//查询当前用户的任务(角色编码查询)
		page.setPd(pd);
		List<PageData>	varList = ruprocdefService.list(page);			//列出Rutask列表
		for(int i=0;i<varList.size();i++){
			varList.get(i).put("INITATOR", getInitiator(varList.get(i).getString("PROC_INST_ID_")));//流程申请人
		}
		model.addAttribute("varList", varList);
		model.addAttribute("pd", pd);
		return "mobile/task/m_rutask_list";
	}
	
	/**委派
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/delegate")
	@RequiresPermissions("Delegate")
	public String delegate(Model model) throws Exception{
		PageData pd = new PageData();
		pd = this.getPageData();
		Map<String,Object> map = new LinkedHashMap<String, Object>();
		map.put("审批结果", " (任务由["+Jurisdiction.getUsername()+"]委派) ");	//审批结果中记录委派
		setVariablesByTaskIdAsMap(pd.getString("ID_"),map);						//设置流程变量
		setAssignee(pd.getString("ID_"),pd.getString("ASSIGNEE_"));
		model.addAttribute("ASSIGNEE_",pd.getString("ASSIGNEE_"));				//用于给待办人发送新任务消息
		model.addAttribute("msg","success");
		return "redirect:/mobiletask/list";
	}
	
	/**去办理任务页面
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/goHandle")
	public String goHandle(Model model)throws Exception{
		PageData pd = new PageData();
		pd = this.getPageData();
		List<PageData>	varList = ruprocdefService.varList(pd);			//列出流程变量列表
		List<PageData>	hitaskList = ruprocdefService.hiTaskList(pd);	//历史任务节点列表
		for(int i=0;i<hitaskList.size();i++){							//根据耗时的毫秒数计算天时分秒
			if(null != hitaskList.get(i).get("DURATION_")){
				Long ztime = Long.parseLong(hitaskList.get(i).get("DURATION_").toString());
				Long tian = ztime / (1000*60*60*24);
				Long shi = (ztime % (1000*60*60*24))/(1000*60*60);
				Long fen = (ztime % (1000*60*60*24))%(1000*60*60)/(1000*60);
				Long miao = (ztime % (1000*60*60*24))%(1000*60*60)%(1000*60)/1000;
				hitaskList.get(i).put("ZTIME", tian+"天"+shi+"时"+fen+"分"+miao+"秒");
			}
		}
		String FILENAME = URLDecoder.decode(pd.getString("FILENAME"), "UTF-8");
		createXmlAndPngAtNowTask(pd.getString("PROC_INST_ID_"),FILENAME);//生成当前任务节点的流程图片
		pd.put("FILENAME", FILENAME);
		String imgSrcPath = PathUtil.getProjectpath()+Const.FILEACTIVITI+FILENAME;
		pd.put("imgSrc", "data:image/jpeg;base64,"+ImageAnd64Binary.getImageStr(imgSrcPath)); //解决图片src中文乱码，把图片转成base64格式显示(这样就不用修改tomcat的配置了)
		model.addAttribute("varList", varList);
		model.addAttribute("hitaskList", hitaskList);
		model.addAttribute("pd", pd);
		return "mobile/task/m_rutask_handle";
	}
	
	/**待办任务数量
	 * @param page
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/getTaskCount")
	@ResponseBody
	public Object getList(Page page) throws Exception{
		Map<String,Object> map = new HashMap<String,Object>();
		PageData pd = new PageData();
		pd.put("USERNAME", Jurisdiction.getUsername()); 		//查询当前用户的任务(用户名查询)
		pd.put("RNUMBERS", Jurisdiction.getRnumbers()); 		//查询当前用户的任务(角色编码查询)
		page.setPd(pd);
		page.setShowCount(5);
		ruprocdefService.list(page);						
		map.put("taskCount", page.getTotalResult());			
		return map;
	}
	
	/**办理任务
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/handle")
	@RequiresPermissions("rutask:edit")
	public String handle(Model model) throws Exception{
		Session session = Jurisdiction.getSession();
		PageData pd = new PageData();
		pd = this.getPageData();
		String taskId = pd.getString("ID_");	//任务ID
		String sfrom = "";
		Object ofrom = getVariablesByTaskIdAsMap(taskId,"审批结果");
		if(null != ofrom){
			sfrom = ofrom.toString();
		}
		Map<String,Object> map = new LinkedHashMap<String, Object>();
		String OPINION = sfrom + Jurisdiction.getName() + ",fh,"+pd.getString("OPINION");//审批人的姓名+审批意见
		String msg = pd.getString("msg");
		if("yes".equals(msg)){								//批准
			map.put("审批结果", "【批准】" + OPINION);		//审批结果
			setVariablesByTaskIdAsMap(taskId,map);			//设置流程变量
			setVariablesByTaskId(taskId,"RESULT","批准");
			completeMyPersonalTask(taskId);
		}else{												//驳回
			map.put("审批结果", "【驳回】" + OPINION);		//审批结果
			setVariablesByTaskIdAsMap(taskId,map);			//设置流程变量
			setVariablesByTaskId(taskId,"RESULT","驳回");
			completeMyPersonalTask(taskId);
		}
		try{
			removeVariablesByPROC_INST_ID_(pd.getString("PROC_INST_ID_"),"RESULT");			//移除流程变量(从正在运行中)
		}catch(Exception e){
			/*此流程变量在历史中**/
		}
		try{
			String ASSIGNEE_ = pd.getString("ASSIGNEE_");							//下一待办对象
			if(Tools.notEmpty(ASSIGNEE_)){
				setAssignee(session.getAttribute("TASKID").toString(),ASSIGNEE_);	//指定下一任务待办对象
			}else{
				Object os = session.getAttribute("YAssignee");
				if(null != os && !"".equals(os.toString())){
					ASSIGNEE_ = os.toString();										//没有指定就是默认流程的待办人
				}else{
					trySendSms(model,pd); //没有任务监听时，默认流程结束，发送站内信给任务发起人
				}
			}
		}catch(Exception e){
			/*手动指定下一待办人，才会触发此异常。
			 * 任务结束不需要指定下一步办理人了,发送站内信通知任务发起人**/
			trySendSms(model,pd);
		}
		model.addAttribute("msg","success");
		return "redirect:/mobiletask/list";
	}
	
	/**发送站内信
	 * @param mv
	 * @param pd
	 * @throws Exception
	 */
	public void trySendSms(Model model,PageData pd)throws Exception{
		List<PageData>	hivarList = hiprocdefService.hivarList(pd);			//列出历史流程变量列表
		for(int i=0;i<hivarList.size();i++){
			if("USERNAME".equals(hivarList.get(i).getString("NAME_"))){
				sendSms(hivarList.get(i).getString("TEXT_"));
				model.addAttribute("FHSMS",hivarList.get(i).getString("TEXT_"));
				break;
			}
		}
	}
	
	/**发站内信通知审批结束
	 * @param USERNAME
	 * @throws Exception
	 */
	public void sendSms(String USERNAME) throws Exception{
		PageData pd = new PageData();
		pd.put("SANME_ID", this.get32UUID());			//ID
		pd.put("SEND_TIME", DateUtil.getTime());		//发送时间
		pd.put("FHSMS_ID", this.get32UUID());			//主键
		pd.put("TYPE", "1");							//类型1：收信
		pd.put("FROM_USERNAME", USERNAME);				//收信人
		pd.put("TO_USERNAME", "系统消息");
		pd.put("CONTENT", "您申请的任务已经审批完毕,请到已办任务列表查看");
		pd.put("STATUS", "2");
		fhsmsService.save(pd);
	}
	
	/**去审批详情页面
	 * @param 
	 * @return
	 */
	@RequestMapping(value="/details")
	public String details(Model model){
		PageData pd = new PageData();
		pd = this.getPageData();
		model.addAttribute("pd", pd);
		return "activiti/rutask/handle_details";
	}
	
	/**已办任务列表
	 * @param page
	 * @throws Exception
	 */
	@RequestMapping(value="/hislist")
	public String hislist(Page page, Model model) throws Exception{
		PageData pd = new PageData();
		pd = this.getPageData();
		String keywords = pd.getString("keywords");						//关键词检索条件
		if(null != keywords && !"".equals(keywords)){
			pd.put("keywords", keywords.trim());
		}
		pd.put("USERNAME", Jurisdiction.getUsername()); 				//查询当前用户的任务(用户名查询)
		pd.put("RNUMBERS", Jurisdiction.getRnumbers()); 				//查询当前用户的任务(角色编码查询)
		page.setPd(pd);
		List<PageData>	varList = ruprocdefService.hitasklist(page);	//列出历史任务列表
		for(int i=0;i<varList.size();i++){
			Long ztime = Long.parseLong(varList.get(i).get("DURATION_").toString());
			Long tian = ztime / (1000*60*60*24);
			Long shi = (ztime % (1000*60*60*24))/(1000*60*60);
			Long fen = (ztime % (1000*60*60*24))%(1000*60*60)/(1000*60);
			Long miao = (ztime % (1000*60*60*24))%(1000*60*60)%(1000*60)/1000;
			varList.get(i).put("ZTIME", tian+"天"+shi+"时"+fen+"分"+miao+"秒");
			varList.get(i).put("INITATOR", getInitiator(varList.get(i).getString("PROC_INST_ID_")));//流程申请人
		}
		model.addAttribute("varList", varList);
		model.addAttribute("pd", pd);
		return "mobile/task/m_histask_list";
	}
	
	/**查看流程信息页面
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/view")
	public String view(Model model)throws Exception{
		PageData pd = new PageData();
		pd = this.getPageData();
		List<PageData>	varList = hiprocdefService.hivarList(pd);			//列出历史流程变量列表
		List<PageData>	hitaskList = ruprocdefService.hiTaskList(pd);		//历史任务节点列表
		for(int i=0;i<hitaskList.size();i++){								//根据耗时的毫秒数计算天时分秒
			if(null != hitaskList.get(i).get("DURATION_")){
				Long ztime = Long.parseLong(hitaskList.get(i).get("DURATION_").toString());
				Long tian = ztime / (1000*60*60*24);
				Long shi = (ztime % (1000*60*60*24))/(1000*60*60);
				Long fen = (ztime % (1000*60*60*24))%(1000*60*60)/(1000*60);
				Long miao = (ztime % (1000*60*60*24))%(1000*60*60)%(1000*60)/1000;
				hitaskList.get(i).put("ZTIME", tian+"天"+shi+"时"+fen+"分"+miao+"秒");
			}
		}
		String FILENAME = URLDecoder.decode(pd.getString("FILENAME"), "UTF-8");
		createXmlAndPngAtNowTask(pd.getString("PROC_INST_ID_"),FILENAME);	//生成当前任务节点的流程图片
		pd.put("FILENAME", FILENAME);
		String imgSrcPath = PathUtil.getProjectpath()+Const.FILEACTIVITI+FILENAME;
		pd.put("imgSrc", "data:image/jpeg;base64,"+ImageAnd64Binary.getImageStr(imgSrcPath)); //解决图片src中文乱码，把图片转成base64格式显示(这样就不用修改tomcat的配置了)
		model.addAttribute("varList", varList);
		model.addAttribute("hitaskList", hitaskList);
		model.addAttribute("pd", pd);
		return "mobile/task/m_histask_view";
	}
	
	/**作废流程
	 * @param out
	 * @throws Exception
	 */
	@RequestMapping(value="/delete")
	@ResponseBody
	@RequiresPermissions("Abolish")
	public Object delete() throws Exception{
		Map<String,Object> map = new HashMap<String,Object>();
		PageData pd = new PageData();
		pd = this.getPageData();
		String reason = "【作废】"+Jurisdiction.getName()+"："+URLDecoder.decode(pd.getString("reason"), "UTF-8");	//作废原因
		/**任务结束时发站内信通知审批结束*/
		List<PageData>	hivarList = hiprocdefService.hivarList(pd);			//列出历史流程变量列表
		for(int i=0;i<hivarList.size();i++){
			if("USERNAME".equals(hivarList.get(i).getString("NAME_"))){
				sendSmszs(hivarList.get(i).getString("TEXT_"));
				break;
			}
		}
		deleteProcessInstance(pd.getString("PROC_INST_ID_"),reason);		//作废流程
		map.put("msg", "ok");
		return map;
	}
	
	/**发站内信通知审批结束
	 * @param USERNAME
	 * @throws Exception
	 */
	public void sendSmszs(String USERNAME) throws Exception{
		PageData pd = new PageData();
		pd.put("SANME_ID", this.get32UUID());			//ID
		pd.put("SEND_TIME", DateUtil.getTime());		//发送时间
		pd.put("FHSMS_ID", this.get32UUID());			//主键
		pd.put("TYPE", "1");							//类型1：收信
		pd.put("FROM_USERNAME", USERNAME);				//收信人
		pd.put("TO_USERNAME", "系统消息");
		pd.put("CONTENT", "您申请的任务已经被作废,请到已办任务列表查看");
		pd.put("STATUS", "2");
		fhsmsService.save(pd);
	}

}
