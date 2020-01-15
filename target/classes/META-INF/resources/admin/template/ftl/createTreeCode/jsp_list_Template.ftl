<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"  %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<base href="<%=basePath%>">
    <meta charset="utf-8">
    <title>${r"${sessionScope.sysName}"}</title>
    <!-- HTML5 Shim and Respond.js IE10 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 10]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="author" content="FH Admin QQ313596790" />

    <link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="assets/fonts/material/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="assets/fonts/fontawesome/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/plugins/animation/css/animate.min.css">
    <link rel="stylesheet" href="assets/css/style.css">

</head>

<body>
    
    <!-- [加载状态 ] start -->
    <div class="loader-bg">
        <div class="loader-track">
            <div class="loader-fill"></div>
        </div>
    </div>
    <!-- [ 加载状态  ] End -->

    <!-- [ 主内容区 ] start -->
        <div class="pcoded-wrapper">
            <div class="pcoded-content">
                <div class="pcoded-inner-content">
                    <div class="main-body">
                        <div class="page-wrapper">
                            <!-- [ Main Content ] start -->
                            <div class="row">

							    <!-- [ Hover-table ] start -->
                                <div class="col-xl-12">
                                    <div class="card">
         
										<form action="${objectNameLower}/list" method="post" name="Form" id="Form">
											<!-- 检索  -->
											<div style="padding-left: 20px;padding-top: 15px;">
											<table style="margin-top:5px;">
												<tr>
													<td>
								                        <div class="input-group input-group-sm mb-3">
		                                                	<input class="form-control" id="KEYWORDS" type="text" name="KEYWORDS" value="${r"${pd.KEYWORDS }"}" placeholder="这里输入关键词" />
		                                            	</div>
													</td>
													<td style="vertical-align:top;padding-left:5px;">
														<a class="btn btn-light btn-sm" onclick="searchs();" style="width: 23px;height:30px;margin-top:1px;" title="检索"><i style="margin-top:-3px;margin-left: -6px;"  class="feather icon-search"></i></a>
														<shiro:hasPermission name="toExcel">
														<a class="btn btn-light btn-sm" onclick="toExcel();" style="width: 23px;height:30px;margin-top:1px;margin-left: -9px;" title="导出到excel表格">
															<i style="margin-top:-3px;margin-left: -6px;" class="mdi mdi-cloud-download"></i>
														</a>
														</shiro:hasPermission>
													</td>
												</tr>
											</table>
											</div>
											<!-- 检索  -->
											<div class="card-block table-border-style" style="margin-top: -15px">
                                    			<div class="table-responsive">
                                        			<table class="table table-hover">
														<thead>
															<tr>
																<th style="width:50px;">NO</th>
																<th>名称</th>
															<#list fieldList as var>
																<th>${var[2]}</th>
															</#list>
																<th>操作</th>
															</tr>
														</thead>
																				
														<tbody>
														<!-- 开始循环 -->	
														<c:choose>
															<c:when test="${r"${not empty varList}"}">
																<c:forEach items="${r"${varList}"}" var="var" varStatus="vs">
																	<tr>
																		<td>${r"${page.showCount*(page.currentPage-1)+vs.index+1}"}</td>
																		<td><a href="javascript:goSondict('${r"${var."}${objectNameUpper}_ID${r"}"}')">${r"${var.NAME}"}  <i class="zmdi zmdi-chevron-down zmdi-hc-fw"></i></a></td>
																<#list fieldList as var>
																	<#if var[1] == 'String' && var[7] != 'null'>
																		<td>${r"${var."}DNAME${var_index+1}${r"}"}</td>
																	<#else>
																		<td>${r"${var."}${var[0]}${r"}"}</td>
																	</#if>
																</#list>
																		<td>
																			<shiro:hasPermission name="${objectNameLower}:edit"><a title="修改" onclick="edit('${r"${var."}${objectNameUpper}_ID${r"}"}');" style="cursor:pointer;"><i class="feather icon-edit-2"></i></a></shiro:hasPermission>
										                 					<shiro:hasPermission name="${objectNameLower}:del"><a title="删除" onclick="del('${r"${var."}${objectNameUpper}_ID${r"}"}');" style="cursor:pointer;"><i class="feather icon-x"></i></a></shiro:hasPermission>
																		</td>
																	</tr>
																</c:forEach>
															</c:when>
															<c:otherwise>
																<tr>
																	<td colspan="100">没有相关数据</td>
																</tr>
															</c:otherwise>
														</c:choose>
														</tbody>
													</table>
													
													<table style="width:100%;margin-top:15px;">
														<tr>
															<td style="vertical-align:top;">
																<shiro:hasPermission name="${objectNameLower}:add"><a class="btn btn-light btn-sm" onclick="add('${r"${"}${objectNameUpper}_ID${r"}"}');">新增</a></shiro:hasPermission>
																<c:if test="${r"${null != pd."}${objectNameUpper}_ID${r" && pd."}${objectNameUpper}_ID${r" != ''}"}">
																<a class="btn btn-light btn-sm" onclick="goSondict('${r"${pd.PARENT_ID}"}');">返回</a>
																</c:if>
															</td>
															<td style="vertical-align:top;"><div style="float: right;padding-top: 0px;margin-top: 0px;">${r"${page.pageStr}"}</div></td>
														</tr>
													</table>
												</div>
                                    		</div>	
										</form>
			
                                    </div>
                                </div>
                                <!-- [ Hover-table ] end -->

                            </div>
                            <!-- [ Main Content ] end -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <!-- [ 主内容区 ] end -->
    
<script type="text/javascript" src="assets/js/jquery-1.7.2.js"></script>
<script type="text/javascript" src="assets/js/pre-loader.js"></script>
<script src="assets/plugins/sweetalert/js/sweetalert.min.js"></script>
<!-- 表单验证提示 -->
<script src="assets/js/jquery.tips.js"></script>
<script type="text/javascript">

		//检索
		function searchs(){
			//$("#Form").submit();
		}
		
		//去此ID下子级列表
		function goSondict(${objectNameUpper}_ID){
			window.location.href="<%=basePath%>${objectNameLower}/list?${objectNameUpper}_ID="+${objectNameUpper}_ID;
		};
		
		//新增
		function add(${objectNameUpper}_ID){
			 var diag = new top.Dialog();
			 diag.Drag=true;
			 diag.Title ="新增";
			 diag.URL = '<%=basePath%>${objectNameLower}/goAdd?${objectNameUpper}_ID='+${objectNameUpper}_ID;
			 diag.Width = 800;
			 diag.Height = 600;
			 diag.Modal = true;				//有无遮罩窗口
			 diag. ShowMaxButton = true;	//最大化按钮
		     diag.ShowMinButton = true;		//最小化按钮
			 diag.CancelEvent = function(){ //关闭事件
				 if(diag.innerFrame.contentWindow.document.getElementById('showform').style.display == 'none'){
					 parent.location.href="<%=basePath%>${objectNameLower}/listTree?${objectNameUpper}_ID=${r"${"}${objectNameUpper}_ID${r"}"}&dnowPage=${r"${page.currentPage}"}";
				}
				diag.close();
			 };
			 diag.show();
		}
		
		//删除
		function del(Id){
			swal({
                title: '',
	            text: "确定要删除 吗?",
	            icon: "warning",
	            buttons: true,
	            dangerMode: true,
            }).then((willDelete) => {
            	if (willDelete) {
	            	$.ajax({
	        			type: "POST",
	        			url: '<%=basePath%>${objectNameLower}/delete',
	        	    	data: {${objectNameUpper}_ID:Id,tm:new Date().getTime()},
	        			dataType:'json',
	        			cache: false,
	        			success: function(data){
	        				 if("success" == data.result){
	        					 swal("删除成功", "已经从列表中删除!", "success");
	        		               parent.location.href="<%=basePath%>${objectNameLower}/listTree?${objectNameUpper}_ID=${r"${"}${objectNameUpper}_ID${r"}"}&dnowPage=${r"${page.currentPage}"}";
	        				 }else{
	     		                 swal("删除失败!", "删除失败!请先删除子级数据!", "warning");
	        				 }
	        			}
	        		});
            	}
	        });
		}
		
		//修改
		function edit(Id){
			 var diag = new top.Dialog();
			 diag.Drag=true;
			 diag.Title ="编辑";
			 diag.URL = '<%=basePath%>${objectNameLower}/goEdit?${objectNameUpper}_ID='+Id;
			 diag.Width = 800;
			 diag.Height = 600;
			 diag.Modal = true;				//有无遮罩窗口
			 diag. ShowMaxButton = true;	//最大化按钮
		     diag.ShowMinButton = true;		//最小化按钮
			 diag.CancelEvent = function(){ //关闭事件
				 if(diag.innerFrame.contentWindow.document.getElementById('showform').style.display == 'none'){
					 parent.location.href="<%=basePath%>${objectNameLower}/listTree?${objectNameUpper}_ID=${r"${"}${objectNameUpper}_ID${r"}"}&dnowPage=${r"${page.currentPage}"}";
				}
				diag.close();
			 };
			 diag.show();
		}
		
		//导出excel
		function toExcel(){
			window.location.href='<%=basePath%>${objectNameLower}/excel';
		}
	</script>


</body>
</html>