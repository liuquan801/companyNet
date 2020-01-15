﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<title>${sessionScope.sysName}</title>
<!-- HTML5 Shim and Respond.js IE10 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 10]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
<!-- Meta -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="author" content="FH Admin QQ313596790" />

<link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="assets/fonts/fontawesome/css/fontawesome-all.min.css">
<link rel="stylesheet" href="assets/plugins/animation/css/animate.min.css">
<link rel="stylesheet" href="assets/fonts/material/css/materialdesignicons.min.css">
<link rel="stylesheet" href="assets/css/style.css">

</head>

<body style="background-color: white">

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

							<div id="showform" class="icons-demo">
								<form action="menu/editicon" name="Form" id="Form" method="post" style="width: 100%;">
									<input type="hidden" name="MENU_ID" id="menuId" value="${pd.MENU_ID}" /> <input type="hidden" name="MENU_ICON" id="MENU_ICON" value="" />
									<h6 style="margin-left: 5px;">双击选择的图标</h6>
									<div class="i-main" id="icon-wrapper">
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-alert-octagon"
											data-filter="icon-alert-octagon" data-toggle="tooltip"
											title="" data-original-title="icon-alert-octagon">
											<i class="feather icon-alert-octagon"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-alert-circle"
											data-filter="icon-alert-circle" data-toggle="tooltip"
											title="" data-original-title="icon-alert-circle">
											<i class="feather icon-alert-circle"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-activity"
											data-filter="icon-activity" data-toggle="tooltip" title=""
											data-original-title="icon-activity">
											<i class="feather icon-activity"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-alert-triangle"
											data-filter="icon-alert-triangle" data-toggle="tooltip"
											title="" data-original-title="icon-alert-triangle">
											<i class="feather icon-alert-triangle"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-align-center"
											data-filter="icon-align-center" data-toggle="tooltip"
											title="" data-original-title="icon-align-center">
											<i class="feather icon-align-center"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-airplay"
											data-filter="icon-airplay" data-toggle="tooltip" title=""
											data-original-title="icon-airplay">
											<i class="feather icon-airplay"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-align-justify"
											data-filter="icon-align-justify" data-toggle="tooltip"
											title="" data-original-title="icon-align-justify">
											<i class="feather icon-align-justify"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-align-left"
											data-filter="icon-align-left" data-toggle="tooltip" title=""
											data-original-title="icon-align-left">
											<i class="feather icon-align-left"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-align-right"
											data-filter="icon-align-right" data-toggle="tooltip" title=""
											data-original-title="icon-align-right">
											<i class="feather icon-align-right"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-arrow-down-left"
											data-filter="icon-arrow-down-left" data-toggle="tooltip"
											title="" data-original-title="icon-arrow-down-left">
											<i class="feather icon-arrow-down-left"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-arrow-down-right"
											data-filter="icon-arrow-down-right" data-toggle="tooltip"
											title="" data-original-title="icon-arrow-down-right">
											<i class="feather icon-arrow-down-right"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-anchor"
											data-filter="icon-anchor" data-toggle="tooltip" title=""
											data-original-title="icon-anchor">
											<i class="feather icon-anchor"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-aperture"
											data-filter="icon-aperture" data-toggle="tooltip" title=""
											data-original-title="icon-aperture">
											<i class="feather icon-aperture"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-arrow-left"
											data-filter="icon-arrow-left" data-toggle="tooltip" title=""
											data-original-title="icon-arrow-left">
											<i class="feather icon-arrow-left"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-arrow-right"
											data-filter="icon-arrow-right" data-toggle="tooltip" title=""
											data-original-title="icon-arrow-right">
											<i class="feather icon-arrow-right"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-arrow-down"
											data-filter="icon-arrow-down" data-toggle="tooltip" title=""
											data-original-title="icon-arrow-down">
											<i class="feather icon-arrow-down"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-arrow-up-left"
											data-filter="icon-arrow-up-left" data-toggle="tooltip"
											title="" data-original-title="icon-arrow-up-left">
											<i class="feather icon-arrow-up-left"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-arrow-up-right"
											data-filter="icon-arrow-up-right" data-toggle="tooltip"
											title="" data-original-title="icon-arrow-up-right">
											<i class="feather icon-arrow-up-right"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-arrow-up"
											data-filter="icon-arrow-up" data-toggle="tooltip" title=""
											data-original-title="icon-arrow-up">
											<i class="feather icon-arrow-up"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-award"
											data-filter="icon-award" data-toggle="tooltip" title=""
											data-original-title="icon-award">
											<i class="feather icon-award"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-bar-chart"
											data-filter="icon-bar-chart" data-toggle="tooltip" title=""
											data-original-title="icon-bar-chart">
											<i class="feather icon-bar-chart"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-at-sign"
											data-filter="icon-at-sign" data-toggle="tooltip" title=""
											data-original-title="icon-at-sign">
											<i class="feather icon-at-sign"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-bar-chart-2"
											data-filter="icon-bar-chart-2" data-toggle="tooltip" title=""
											data-original-title="icon-bar-chart-2">
											<i class="feather icon-bar-chart-2"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-battery-charging"
											data-filter="icon-battery-charging" data-toggle="tooltip"
											title="" data-original-title="icon-battery-charging">
											<i class="feather icon-battery-charging"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-bell-off"
											data-filter="icon-bell-off" data-toggle="tooltip" title=""
											data-original-title="icon-bell-off">
											<i class="feather icon-bell-off"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-battery"
											data-filter="icon-battery" data-toggle="tooltip" title=""
											data-original-title="icon-battery">
											<i class="feather icon-battery"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-bluetooth"
											data-filter="icon-bluetooth" data-toggle="tooltip" title=""
											data-original-title="icon-bluetooth">
											<i class="feather icon-bluetooth"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-bell"
											data-filter="icon-bell" data-toggle="tooltip" title=""
											data-original-title="icon-bell">
											<i class="feather icon-bell"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-book"
											data-filter="icon-book" data-toggle="tooltip" title=""
											data-original-title="icon-book">
											<i class="feather icon-book"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-briefcase"
											data-filter="icon-briefcase" data-toggle="tooltip" title=""
											data-original-title="icon-briefcase">
											<i class="feather icon-briefcase"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-camera-off"
											data-filter="icon-camera-off" data-toggle="tooltip" title=""
											data-original-title="icon-camera-off">
											<i class="feather icon-camera-off"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-calendar"
											data-filter="icon-calendar" data-toggle="tooltip" title=""
											data-original-title="icon-calendar">
											<i class="feather icon-calendar"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-bookmark"
											data-filter="icon-bookmark" data-toggle="tooltip" title=""
											data-original-title="icon-bookmark">
											<i class="feather icon-bookmark"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-box"
											data-filter="icon-box" data-toggle="tooltip" title=""
											data-original-title="icon-box">
											<i class="feather icon-box"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-camera"
											data-filter="icon-camera" data-toggle="tooltip" title=""
											data-original-title="icon-camera">
											<i class="feather icon-camera"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-check-circle"
											data-filter="icon-check-circle" data-toggle="tooltip"
											title="" data-original-title="icon-check-circle">
											<i class="feather icon-check-circle"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-check"
											data-filter="icon-check" data-toggle="tooltip" title=""
											data-original-title="icon-check">
											<i class="feather icon-check"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-check-square"
											data-filter="icon-check-square" data-toggle="tooltip"
											title="" data-original-title="icon-check-square">
											<i class="feather icon-check-square"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-cast"
											data-filter="icon-cast" data-toggle="tooltip" title=""
											data-original-title="icon-cast">
											<i class="feather icon-cast"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-chevron-down"
											data-filter="icon-chevron-down" data-toggle="tooltip"
											title="" data-original-title="icon-chevron-down">
											<i class="feather icon-chevron-down"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-chevron-left"
											data-filter="icon-chevron-left" data-toggle="tooltip"
											title="" data-original-title="icon-chevron-left">
											<i class="feather icon-chevron-left"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-chevron-right"
											data-filter="icon-chevron-right" data-toggle="tooltip"
											title="" data-original-title="icon-chevron-right">
											<i class="feather icon-chevron-right"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-chevron-up"
											data-filter="icon-chevron-up" data-toggle="tooltip" title=""
											data-original-title="icon-chevron-up">
											<i class="feather icon-chevron-up"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-chevrons-down"
											data-filter="icon-chevrons-down" data-toggle="tooltip"
											title="" data-original-title="icon-chevrons-down">
											<i class="feather icon-chevrons-down"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-chevrons-right"
											data-filter="icon-chevrons-right" data-toggle="tooltip"
											title="" data-original-title="icon-chevrons-right">
											<i class="feather icon-chevrons-right"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-chevrons-up"
											data-filter="icon-chevrons-up" data-toggle="tooltip" title=""
											data-original-title="icon-chevrons-up">
											<i class="feather icon-chevrons-up"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-chevrons-left"
											data-filter="icon-chevrons-left" data-toggle="tooltip"
											title="" data-original-title="icon-chevrons-left">
											<i class="feather icon-chevrons-left"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-circle"
											data-filter="icon-circle" data-toggle="tooltip" title=""
											data-original-title="icon-circle">
											<i class="feather icon-circle"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-clipboard"
											data-filter="icon-clipboard" data-toggle="tooltip" title=""
											data-original-title="icon-clipboard">
											<i class="feather icon-clipboard"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-chrome"
											data-filter="icon-chrome" data-toggle="tooltip" title=""
											data-original-title="icon-chrome">
											<i class="feather icon-chrome"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-clock"
											data-filter="icon-clock" data-toggle="tooltip" title=""
											data-original-title="icon-clock">
											<i class="feather icon-clock"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-cloud-lightning"
											data-filter="icon-cloud-lightning" data-toggle="tooltip"
											title="" data-original-title="icon-cloud-lightning">
											<i class="feather icon-cloud-lightning"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-cloud-drizzle"
											data-filter="icon-cloud-drizzle" data-toggle="tooltip"
											title="" data-original-title="icon-cloud-drizzle">
											<i class="feather icon-cloud-drizzle"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-cloud-rain"
											data-filter="icon-cloud-rain" data-toggle="tooltip" title=""
											data-original-title="icon-cloud-rain">
											<i class="feather icon-cloud-rain"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-cloud-off"
											data-filter="icon-cloud-off" data-toggle="tooltip" title=""
											data-original-title="icon-cloud-off">
											<i class="feather icon-cloud-off"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-codepen"
											data-filter="icon-codepen" data-toggle="tooltip" title=""
											data-original-title="icon-codepen">
											<i class="feather icon-codepen"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-cloud-snow"
											data-filter="icon-cloud-snow" data-toggle="tooltip" title=""
											data-original-title="icon-cloud-snow">
											<i class="feather icon-cloud-snow"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-compass"
											data-filter="icon-compass" data-toggle="tooltip" title=""
											data-original-title="icon-compass">
											<i class="feather icon-compass"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-copy"
											data-filter="icon-copy" data-toggle="tooltip" title=""
											data-original-title="icon-copy">
											<i class="feather icon-copy"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-corner-down-right"
											data-filter="icon-corner-down-right" data-toggle="tooltip"
											title="" data-original-title="icon-corner-down-right">
											<i class="feather icon-corner-down-right"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-corner-down-left"
											data-filter="icon-corner-down-left" data-toggle="tooltip"
											title="" data-original-title="icon-corner-down-left">
											<i class="feather icon-corner-down-left"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-corner-left-down"
											data-filter="icon-corner-left-down" data-toggle="tooltip"
											title="" data-original-title="icon-corner-left-down">
											<i class="feather icon-corner-left-down"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-corner-left-up"
											data-filter="icon-corner-left-up" data-toggle="tooltip"
											title="" data-original-title="icon-corner-left-up">
											<i class="feather icon-corner-left-up"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-corner-up-left"
											data-filter="icon-corner-up-left" data-toggle="tooltip"
											title="" data-original-title="icon-corner-up-left">
											<i class="feather icon-corner-up-left"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-corner-up-right"
											data-filter="icon-corner-up-right" data-toggle="tooltip"
											title="" data-original-title="icon-corner-up-right">
											<i class="feather icon-corner-up-right"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-corner-right-down"
											data-filter="icon-corner-right-down" data-toggle="tooltip"
											title="" data-original-title="icon-corner-right-down">
											<i class="feather icon-corner-right-down"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-corner-right-up"
											data-filter="icon-corner-right-up" data-toggle="tooltip"
											title="" data-original-title="icon-corner-right-up">
											<i class="feather icon-corner-right-up"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-cpu"
											data-filter="icon-cpu" data-toggle="tooltip" title=""
											data-original-title="icon-cpu">
											<i class="feather icon-cpu"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-credit-card"
											data-filter="icon-credit-card" data-toggle="tooltip" title=""
											data-original-title="icon-credit-card">
											<i class="feather icon-credit-card"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-crosshair"
											data-filter="icon-crosshair" data-toggle="tooltip" title=""
											data-original-title="icon-crosshair">
											<i class="feather icon-crosshair"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-disc"
											data-filter="icon-disc" data-toggle="tooltip" title=""
											data-original-title="icon-disc">
											<i class="feather icon-disc"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-delete"
											data-filter="icon-delete" data-toggle="tooltip" title=""
											data-original-title="icon-delete">
											<i class="feather icon-delete"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-download-cloud"
											data-filter="icon-download-cloud" data-toggle="tooltip"
											title="" data-original-title="icon-download-cloud">
											<i class="feather icon-download-cloud"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-download"
											data-filter="icon-download" data-toggle="tooltip" title=""
											data-original-title="icon-download">
											<i class="feather icon-download"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-droplet"
											data-filter="icon-droplet" data-toggle="tooltip" title=""
											data-original-title="icon-droplet">
											<i class="feather icon-droplet"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-edit-2"
											data-filter="icon-edit-2" data-toggle="tooltip" title=""
											data-original-title="icon-edit-2">
											<i class="feather icon-edit-2"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-edit"
											data-filter="icon-edit" data-toggle="tooltip" title=""
											data-original-title="icon-edit">
											<i class="feather icon-edit"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-edit-1"
											data-filter="icon-edit-1" data-toggle="tooltip" title=""
											data-original-title="icon-edit-1">
											<i class="feather icon-edit-1"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-external-link"
											data-filter="icon-external-link" data-toggle="tooltip"
											title="" data-original-title="icon-external-link">
											<i class="feather icon-external-link"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-eye"
											data-filter="icon-eye" data-toggle="tooltip" title=""
											data-original-title="icon-eye">
											<i class="feather icon-eye"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-feather"
											data-filter="icon-feather" data-toggle="tooltip" title=""
											data-original-title="icon-feather">
											<i class="feather icon-feather"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-facebook"
											data-filter="icon-facebook" data-toggle="tooltip" title=""
											data-original-title="icon-facebook">
											<i class="feather icon-facebook"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-file-minus"
											data-filter="icon-file-minus" data-toggle="tooltip" title=""
											data-original-title="icon-file-minus">
											<i class="feather icon-file-minus"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-eye-off"
											data-filter="icon-eye-off" data-toggle="tooltip" title=""
											data-original-title="icon-eye-off">
											<i class="feather icon-eye-off"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-fast-forward"
											data-filter="icon-fast-forward" data-toggle="tooltip"
											title="" data-original-title="icon-fast-forward">
											<i class="feather icon-fast-forward"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-file-text"
											data-filter="icon-file-text" data-toggle="tooltip" title=""
											data-original-title="icon-file-text">
											<i class="feather icon-file-text"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-film"
											data-filter="icon-film" data-toggle="tooltip" title=""
											data-original-title="icon-film">
											<i class="feather icon-film"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-file"
											data-filter="icon-file" data-toggle="tooltip" title=""
											data-original-title="icon-file">
											<i class="feather icon-file"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-file-plus"
											data-filter="icon-file-plus" data-toggle="tooltip" title=""
											data-original-title="icon-file-plus">
											<i class="feather icon-file-plus"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-folder"
											data-filter="icon-folder" data-toggle="tooltip" title=""
											data-original-title="icon-folder">
											<i class="feather icon-folder"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-filter"
											data-filter="icon-filter" data-toggle="tooltip" title=""
											data-original-title="icon-filter">
											<i class="feather icon-filter"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-flag"
											data-filter="icon-flag" data-toggle="tooltip" title=""
											data-original-title="icon-flag">
											<i class="feather icon-flag"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-globe"
											data-filter="icon-globe" data-toggle="tooltip" title=""
											data-original-title="icon-globe">
											<i class="feather icon-globe"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-grid"
											data-filter="icon-grid" data-toggle="tooltip" title=""
											data-original-title="icon-grid">
											<i class="feather icon-grid"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-heart"
											data-filter="icon-heart" data-toggle="tooltip" title=""
											data-original-title="icon-heart">
											<i class="feather icon-heart"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-home"
											data-filter="icon-home" data-toggle="tooltip" title=""
											data-original-title="icon-home">
											<i class="feather icon-home"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-github"
											data-filter="icon-github" data-toggle="tooltip" title=""
											data-original-title="icon-github">
											<i class="feather icon-github"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-image"
											data-filter="icon-image" data-toggle="tooltip" title=""
											data-original-title="icon-image">
											<i class="feather icon-image"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-inbox"
											data-filter="icon-inbox" data-toggle="tooltip" title=""
											data-original-title="icon-inbox">
											<i class="feather icon-inbox"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-layers"
											data-filter="icon-layers" data-toggle="tooltip" title=""
											data-original-title="icon-layers">
											<i class="feather icon-layers"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-info"
											data-filter="icon-info" data-toggle="tooltip" title=""
											data-original-title="icon-info">
											<i class="feather icon-info"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-instagram"
											data-filter="icon-instagram" data-toggle="tooltip" title=""
											data-original-title="icon-instagram">
											<i class="feather icon-instagram"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-layout"
											data-filter="icon-layout" data-toggle="tooltip" title=""
											data-original-title="icon-layout">
											<i class="feather icon-layout"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-link-2"
											data-filter="icon-link-2" data-toggle="tooltip" title=""
											data-original-title="icon-link-2">
											<i class="feather icon-link-2"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-life-buoy"
											data-filter="icon-life-buoy" data-toggle="tooltip" title=""
											data-original-title="icon-life-buoy">
											<i class="feather icon-life-buoy"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-link"
											data-filter="icon-link" data-toggle="tooltip" title=""
											data-original-title="icon-link">
											<i class="feather icon-link"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-log-in"
											data-filter="icon-log-in" data-toggle="tooltip" title=""
											data-original-title="icon-log-in">
											<i class="feather icon-log-in"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-list"
											data-filter="icon-list" data-toggle="tooltip" title=""
											data-original-title="icon-list">
											<i class="feather icon-list"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-lock"
											data-filter="icon-lock" data-toggle="tooltip" title=""
											data-original-title="icon-lock">
											<i class="feather icon-lock"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-log-out"
											data-filter="icon-log-out" data-toggle="tooltip" title=""
											data-original-title="icon-log-out">
											<i class="feather icon-log-out"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-loader"
											data-filter="icon-loader" data-toggle="tooltip" title=""
											data-original-title="icon-loader">
											<i class="feather icon-loader"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-mail"
											data-filter="icon-mail" data-toggle="tooltip" title=""
											data-original-title="icon-mail">
											<i class="feather icon-mail"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-maximize-2"
											data-filter="icon-maximize-2" data-toggle="tooltip" title=""
											data-original-title="icon-maximize-2">
											<i class="feather icon-maximize-2"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-map"
											data-filter="icon-map" data-toggle="tooltip" title=""
											data-original-title="icon-map">
											<i class="feather icon-map"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-map-pin"
											data-filter="icon-map-pin" data-toggle="tooltip" title=""
											data-original-title="icon-map-pin">
											<i class="feather icon-map-pin"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-menu"
											data-filter="icon-menu" data-toggle="tooltip" title=""
											data-original-title="icon-menu">
											<i class="feather icon-menu"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-message-circle"
											data-filter="icon-message-circle" data-toggle="tooltip"
											title="" data-original-title="icon-message-circle">
											<i class="feather icon-message-circle"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-message-square"
											data-filter="icon-message-square" data-toggle="tooltip"
											title="" data-original-title="icon-message-square">
											<i class="feather icon-message-square"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-minimize-2"
											data-filter="icon-minimize-2" data-toggle="tooltip" title=""
											data-original-title="icon-minimize-2">
											<i class="feather icon-minimize-2"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-mic-off"
											data-filter="icon-mic-off" data-toggle="tooltip" title=""
											data-original-title="icon-mic-off">
											<i class="feather icon-mic-off"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-minus-circle"
											data-filter="icon-minus-circle" data-toggle="tooltip"
											title="" data-original-title="icon-minus-circle">
											<i class="feather icon-minus-circle"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-mic"
											data-filter="icon-mic" data-toggle="tooltip" title=""
											data-original-title="icon-mic">
											<i class="feather icon-mic"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-minus-square"
											data-filter="icon-minus-square" data-toggle="tooltip"
											title="" data-original-title="icon-minus-square">
											<i class="feather icon-minus-square"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-minus"
											data-filter="icon-minus" data-toggle="tooltip" title=""
											data-original-title="icon-minus">
											<i class="feather icon-minus"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-moon"
											data-filter="icon-moon" data-toggle="tooltip" title=""
											data-original-title="icon-moon">
											<i class="feather icon-moon"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-monitor"
											data-filter="icon-monitor" data-toggle="tooltip" title=""
											data-original-title="icon-monitor">
											<i class="feather icon-monitor"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-more-vertical"
											data-filter="icon-more-vertical" data-toggle="tooltip"
											title="" data-original-title="icon-more-vertical">
											<i class="feather icon-more-vertical"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-more-horizontal"
											data-filter="icon-more-horizontal" data-toggle="tooltip"
											title="" data-original-title="icon-more-horizontal">
											<i class="feather icon-more-horizontal"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-move"
											data-filter="icon-move" data-toggle="tooltip" title=""
											data-original-title="icon-move">
											<i class="feather icon-move"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-music"
											data-filter="icon-music" data-toggle="tooltip" title=""
											data-original-title="icon-music">
											<i class="feather icon-music"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-navigation-2"
											data-filter="icon-navigation-2" data-toggle="tooltip"
											title="" data-original-title="icon-navigation-2">
											<i class="feather icon-navigation-2"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-navigation"
											data-filter="icon-navigation" data-toggle="tooltip" title=""
											data-original-title="icon-navigation">
											<i class="feather icon-navigation"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-octagon"
											data-filter="icon-octagon" data-toggle="tooltip" title=""
											data-original-title="icon-octagon">
											<i class="feather icon-octagon"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-package"
											data-filter="icon-package" data-toggle="tooltip" title=""
											data-original-title="icon-package">
											<i class="feather icon-package"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-pause-circle"
											data-filter="icon-pause-circle" data-toggle="tooltip"
											title="" data-original-title="icon-pause-circle">
											<i class="feather icon-pause-circle"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-pause"
											data-filter="icon-pause" data-toggle="tooltip" title=""
											data-original-title="icon-pause">
											<i class="feather icon-pause"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-percent"
											data-filter="icon-percent" data-toggle="tooltip" title=""
											data-original-title="icon-percent">
											<i class="feather icon-percent"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-phone-call"
											data-filter="icon-phone-call" data-toggle="tooltip" title=""
											data-original-title="icon-phone-call">
											<i class="feather icon-phone-call"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-phone-forwarded"
											data-filter="icon-phone-forwarded" data-toggle="tooltip"
											title="" data-original-title="icon-phone-forwarded">
											<i class="feather icon-phone-forwarded"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-phone-missed"
											data-filter="icon-phone-missed" data-toggle="tooltip"
											title="" data-original-title="icon-phone-missed">
											<i class="feather icon-phone-missed"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-phone-off"
											data-filter="icon-phone-off" data-toggle="tooltip" title=""
											data-original-title="icon-phone-off">
											<i class="feather icon-phone-off"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-phone-incoming"
											data-filter="icon-phone-incoming" data-toggle="tooltip"
											title="" data-original-title="icon-phone-incoming">
											<i class="feather icon-phone-incoming"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-phone"
											data-filter="icon-phone" data-toggle="tooltip" title=""
											data-original-title="icon-phone">
											<i class="feather icon-phone"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-phone-outgoing"
											data-filter="icon-phone-outgoing" data-toggle="tooltip"
											title="" data-original-title="icon-phone-outgoing">
											<i class="feather icon-phone-outgoing"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-pie-chart"
											data-filter="icon-pie-chart" data-toggle="tooltip" title=""
											data-original-title="icon-pie-chart">
											<i class="feather icon-pie-chart"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-play-circle"
											data-filter="icon-play-circle" data-toggle="tooltip" title=""
											data-original-title="icon-play-circle">
											<i class="feather icon-play-circle"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-play"
											data-filter="icon-play" data-toggle="tooltip" title=""
											data-original-title="icon-play">
											<i class="feather icon-play"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-plus-square"
											data-filter="icon-plus-square" data-toggle="tooltip" title=""
											data-original-title="icon-plus-square">
											<i class="feather icon-plus-square"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-plus-circle"
											data-filter="icon-plus-circle" data-toggle="tooltip" title=""
											data-original-title="icon-plus-circle">
											<i class="feather icon-plus-circle"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-plus"
											data-filter="icon-plus" data-toggle="tooltip" title=""
											data-original-title="icon-plus">
											<i class="feather icon-plus"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-pocket"
											data-filter="icon-pocket" data-toggle="tooltip" title=""
											data-original-title="icon-pocket">
											<i class="feather icon-pocket"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-printer"
											data-filter="icon-printer" data-toggle="tooltip" title=""
											data-original-title="icon-printer">
											<i class="feather icon-printer"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-power"
											data-filter="icon-power" data-toggle="tooltip" title=""
											data-original-title="icon-power">
											<i class="feather icon-power"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-radio"
											data-filter="icon-radio" data-toggle="tooltip" title=""
											data-original-title="icon-radio">
											<i class="feather icon-radio"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-repeat"
											data-filter="icon-repeat" data-toggle="tooltip" title=""
											data-original-title="icon-repeat">
											<i class="feather icon-repeat"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-refresh-ccw"
											data-filter="icon-refresh-ccw" data-toggle="tooltip" title=""
											data-original-title="icon-refresh-ccw">
											<i class="feather icon-refresh-ccw"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-rewind"
											data-filter="icon-rewind" data-toggle="tooltip" title=""
											data-original-title="icon-rewind">
											<i class="feather icon-rewind"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-rotate-ccw"
											data-filter="icon-rotate-ccw" data-toggle="tooltip" title=""
											data-original-title="icon-rotate-ccw">
											<i class="feather icon-rotate-ccw"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-refresh-cw"
											data-filter="icon-refresh-cw" data-toggle="tooltip" title=""
											data-original-title="icon-refresh-cw">
											<i class="feather icon-refresh-cw"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-rotate-cw"
											data-filter="icon-rotate-cw" data-toggle="tooltip" title=""
											data-original-title="icon-rotate-cw">
											<i class="feather icon-rotate-cw"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-save"
											data-filter="icon-save" data-toggle="tooltip" title=""
											data-original-title="icon-save">
											<i class="feather icon-save"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-search"
											data-filter="icon-search" data-toggle="tooltip" title=""
											data-original-title="icon-search">
											<i class="feather icon-search"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-server"
											data-filter="icon-server" data-toggle="tooltip" title=""
											data-original-title="icon-server">
											<i class="feather icon-server"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-scissors"
											data-filter="icon-scissors" data-toggle="tooltip" title=""
											data-original-title="icon-scissors">
											<i class="feather icon-scissors"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-share-2"
											data-filter="icon-share-2" data-toggle="tooltip" title=""
											data-original-title="icon-share-2">
											<i class="feather icon-share-2"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-share"
											data-filter="icon-share" data-toggle="tooltip" title=""
											data-original-title="icon-share">
											<i class="feather icon-share"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-shield"
											data-filter="icon-shield" data-toggle="tooltip" title=""
											data-original-title="icon-shield">
											<i class="feather icon-shield"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-settings"
											data-filter="icon-settings" data-toggle="tooltip" title=""
											data-original-title="icon-settings">
											<i class="feather icon-settings"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-skip-back"
											data-filter="icon-skip-back" data-toggle="tooltip" title=""
											data-original-title="icon-skip-back">
											<i class="feather icon-skip-back"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-shuffle"
											data-filter="icon-shuffle" data-toggle="tooltip" title=""
											data-original-title="icon-shuffle">
											<i class="feather icon-shuffle"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-sidebar"
											data-filter="icon-sidebar" data-toggle="tooltip" title=""
											data-original-title="icon-sidebar">
											<i class="feather icon-sidebar"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-skip-forward"
											data-filter="icon-skip-forward" data-toggle="tooltip"
											title="" data-original-title="icon-skip-forward">
											<i class="feather icon-skip-forward"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-slack"
											data-filter="icon-slack" data-toggle="tooltip" title=""
											data-original-title="icon-slack">
											<i class="feather icon-slack"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-slash"
											data-filter="icon-slash" data-toggle="tooltip" title=""
											data-original-title="icon-slash">
											<i class="feather icon-slash"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-smartphone"
											data-filter="icon-smartphone" data-toggle="tooltip" title=""
											data-original-title="icon-smartphone">
											<i class="feather icon-smartphone"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-square"
											data-filter="icon-square" data-toggle="tooltip" title=""
											data-original-title="icon-square">
											<i class="feather icon-square"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-speaker"
											data-filter="icon-speaker" data-toggle="tooltip" title=""
											data-original-title="icon-speaker">
											<i class="feather icon-speaker"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-star"
											data-filter="icon-star" data-toggle="tooltip" title=""
											data-original-title="icon-star">
											<i class="feather icon-star"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-stop-circle"
											data-filter="icon-stop-circle" data-toggle="tooltip" title=""
											data-original-title="icon-stop-circle">
											<i class="feather icon-stop-circle"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-sun"
											data-filter="icon-sun" data-toggle="tooltip" title=""
											data-original-title="icon-sun">
											<i class="feather icon-sun"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-sunrise"
											data-filter="icon-sunrise" data-toggle="tooltip" title=""
											data-original-title="icon-sunrise">
											<i class="feather icon-sunrise"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-tablet"
											data-filter="icon-tablet" data-toggle="tooltip" title=""
											data-original-title="icon-tablet">
											<i class="feather icon-tablet"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-tag"
											data-filter="icon-tag" data-toggle="tooltip" title=""
											data-original-title="icon-tag">
											<i class="feather icon-tag"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-sunset"
											data-filter="icon-sunset" data-toggle="tooltip" title=""
											data-original-title="icon-sunset">
											<i class="feather icon-sunset"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-target"
											data-filter="icon-target" data-toggle="tooltip" title=""
											data-original-title="icon-target">
											<i class="feather icon-target"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-thermometer"
											data-filter="icon-thermometer" data-toggle="tooltip" title=""
											data-original-title="icon-thermometer">
											<i class="feather icon-thermometer"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-thumbs-up"
											data-filter="icon-thumbs-up" data-toggle="tooltip" title=""
											data-original-title="icon-thumbs-up">
											<i class="feather icon-thumbs-up"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-thumbs-down"
											data-filter="icon-thumbs-down" data-toggle="tooltip" title=""
											data-original-title="icon-thumbs-down">
											<i class="feather icon-thumbs-down"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-toggle-left"
											data-filter="icon-toggle-left" data-toggle="tooltip" title=""
											data-original-title="icon-toggle-left">
											<i class="feather icon-toggle-left"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-toggle-right"
											data-filter="icon-toggle-right" data-toggle="tooltip"
											title="" data-original-title="icon-toggle-right">
											<i class="feather icon-toggle-right"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-trash-2"
											data-filter="icon-trash-2" data-toggle="tooltip" title=""
											data-original-title="icon-trash-2">
											<i class="feather icon-trash-2"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-trash"
											data-filter="icon-trash" data-toggle="tooltip" title=""
											data-original-title="icon-trash">
											<i class="feather icon-trash"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-trending-up"
											data-filter="icon-trending-up" data-toggle="tooltip" title=""
											data-original-title="icon-trending-up">
											<i class="feather icon-trending-up"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-trending-down"
											data-filter="icon-trending-down" data-toggle="tooltip"
											title="" data-original-title="icon-trending-down">
											<i class="feather icon-trending-down"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-triangle"
											data-filter="icon-triangle" data-toggle="tooltip" title=""
											data-original-title="icon-triangle">
											<i class="feather icon-triangle"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-type"
											data-filter="icon-type" data-toggle="tooltip" title=""
											data-original-title="icon-type">
											<i class="feather icon-type"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-twitter"
											data-filter="icon-twitter" data-toggle="tooltip" title=""
											data-original-title="icon-twitter">
											<i class="feather icon-twitter"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-upload"
											data-filter="icon-upload" data-toggle="tooltip" title=""
											data-original-title="icon-upload">
											<i class="feather icon-upload"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-umbrella"
											data-filter="icon-umbrella" data-toggle="tooltip" title=""
											data-original-title="icon-umbrella">
											<i class="feather icon-umbrella"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-upload-cloud"
											data-filter="icon-upload-cloud" data-toggle="tooltip"
											title="" data-original-title="icon-upload-cloud">
											<i class="feather icon-upload-cloud"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-unlock"
											data-filter="icon-unlock" data-toggle="tooltip" title=""
											data-original-title="icon-unlock">
											<i class="feather icon-unlock"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-user-check"
											data-filter="icon-user-check" data-toggle="tooltip" title=""
											data-original-title="icon-user-check">
											<i class="feather icon-user-check"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-user-minus"
											data-filter="icon-user-minus" data-toggle="tooltip" title=""
											data-original-title="icon-user-minus">
											<i class="feather icon-user-minus"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-user-plus"
											data-filter="icon-user-plus" data-toggle="tooltip" title=""
											data-original-title="icon-user-plus">
											<i class="feather icon-user-plus"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-user-x"
											data-filter="icon-user-x" data-toggle="tooltip" title=""
											data-original-title="icon-user-x">
											<i class="feather icon-user-x"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-user"
											data-filter="icon-user" data-toggle="tooltip" title=""
											data-original-title="icon-user">
											<i class="feather icon-user"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-users"
											data-filter="icon-users" data-toggle="tooltip" title=""
											data-original-title="icon-users">
											<i class="feather icon-users"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-video-off"
											data-filter="icon-video-off" data-toggle="tooltip" title=""
											data-original-title="icon-video-off">
											<i class="feather icon-video-off"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-video"
											data-filter="icon-video" data-toggle="tooltip" title=""
											data-original-title="icon-video">
											<i class="feather icon-video"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-voicemail"
											data-filter="icon-voicemail" data-toggle="tooltip" title=""
											data-original-title="icon-voicemail">
											<i class="feather icon-voicemail"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-volume-x"
											data-filter="icon-volume-x" data-toggle="tooltip" title=""
											data-original-title="icon-volume-x">
											<i class="feather icon-volume-x"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-volume-2"
											data-filter="icon-volume-2" data-toggle="tooltip" title=""
											data-original-title="icon-volume-2">
											<i class="feather icon-volume-2"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-volume-1"
											data-filter="icon-volume-1" data-toggle="tooltip" title=""
											data-original-title="icon-volume-1">
											<i class="feather icon-volume-1"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-volume"
											data-filter="icon-volume" data-toggle="tooltip" title=""
											data-original-title="icon-volume">
											<i class="feather icon-volume"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-watch"
											data-filter="icon-watch" data-toggle="tooltip" title=""
											data-original-title="icon-watch">
											<i class="feather icon-watch"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-wifi"
											data-filter="icon-wifi" data-toggle="tooltip" title=""
											data-original-title="icon-wifi">
											<i class="feather icon-wifi"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-x-square"
											data-filter="icon-x-square" data-toggle="tooltip" title=""
											data-original-title="icon-x-square">
											<i class="feather icon-x-square"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-wind"
											data-filter="icon-wind" data-toggle="tooltip" title=""
											data-original-title="icon-wind">
											<i class="feather icon-wind"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-x"
											data-filter="icon-x" data-toggle="tooltip" title=""
											data-original-title="icon-x">
											<i class="feather icon-x"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-x-circle"
											data-filter="icon-x-circle" data-toggle="tooltip" title=""
											data-original-title="icon-x-circle">
											<i class="feather icon-x-circle"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-zap"
											data-filter="icon-zap" data-toggle="tooltip" title=""
											data-original-title="icon-zap">
											<i class="feather icon-zap"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-zoom-in"
											data-filter="icon-zoom-in" data-toggle="tooltip" title=""
											data-original-title="icon-zoom-in">
											<i class="feather icon-zoom-in"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-zoom-out"
											data-filter="icon-zoom-out" data-toggle="tooltip" title=""
											data-original-title="icon-zoom-out">
											<i class="feather icon-zoom-out"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-command"
											data-filter="icon-command" data-toggle="tooltip" title=""
											data-original-title="icon-command">
											<i class="feather icon-command"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-cloud"
											data-filter="icon-cloud" data-toggle="tooltip" title=""
											data-original-title="icon-cloud">
											<i class="feather icon-cloud"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-hash"
											data-filter="icon-hash" data-toggle="tooltip" title=""
											data-original-title="icon-hash">
											<i class="feather icon-hash"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-headphones"
											data-filter="icon-headphones" data-toggle="tooltip" title=""
											data-original-title="icon-headphones">
											<i class="feather icon-headphones"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-underline"
											data-filter="icon-underline" data-toggle="tooltip" title=""
											data-original-title="icon-underline">
											<i class="feather icon-underline"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-italic"
											data-filter="icon-italic" data-toggle="tooltip" title=""
											data-original-title="icon-italic">
											<i class="feather icon-italic"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-bold"
											data-filter="icon-bold" data-toggle="tooltip" title=""
											data-original-title="icon-bold">
											<i class="feather icon-bold"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-crop"
											data-filter="icon-crop" data-toggle="tooltip" title=""
											data-original-title="icon-crop">
											<i class="feather icon-crop"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-help-circle"
											data-filter="icon-help-circle" data-toggle="tooltip" title=""
											data-original-title="icon-help-circle">
											<i class="feather icon-help-circle"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-paperclip"
											data-filter="icon-paperclip" data-toggle="tooltip" title=""
											data-original-title="icon-paperclip">
											<i class="feather icon-paperclip"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-shopping-cart"
											data-filter="icon-shopping-cart" data-toggle="tooltip"
											title="" data-original-title="icon-shopping-cart">
											<i class="feather icon-shopping-cart"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-tv"
											data-filter="icon-tv" data-toggle="tooltip" title=""
											data-original-title="icon-tv">
											<i class="feather icon-tv"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-wifi-off"
											data-filter="icon-wifi-off" data-toggle="tooltip" title=""
											data-original-title="icon-wifi-off">
											<i class="feather icon-wifi-off"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-minimize"
											data-filter="icon-minimize" data-toggle="tooltip" title=""
											data-original-title="icon-minimize">
											<i class="feather icon-minimize"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-maximize"
											data-filter="icon-maximize" data-toggle="tooltip" title=""
											data-original-title="icon-maximize">
											<i class="feather icon-maximize"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)" data-clipboard-text="feather icon-gitlab"
											data-filter="icon-gitlab" data-toggle="tooltip" title=""
											data-original-title="icon-gitlab">
											<i class="feather icon-gitlab"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-sliders"
											data-filter="icon-sliders" data-toggle="tooltip" title=""
											data-original-title="icon-sliders">
											<i class="feather icon-sliders"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-star-on"
											data-filter="icon-star-on" data-toggle="tooltip" title=""
											data-original-title="icon-star-on">
											<i class="feather icon-star-on"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="feather icon-heart-on"
											data-filter="icon-heart-on" data-toggle="tooltip" title=""
											data-original-title="icon-heart-on">
											<i class="feather icon-heart-on"></i>
										</div>
										<div class="i-block" ondblclick="setIcon(this)"
											data-clipboard-text="mdi mdi-database"
											data-filter="mdi-database"
											data-toggle="tooltip" title=""
											data-original-title="mdi-database">
											<i class="mdi mdi-database"></i>
										</div>
									</div>
								</form>
							</div>

							<!-- [加载状态 ] start -->
							<div id="jiazai" style="display: none; margin-top: 50px;width: 100%;text-align: center;">
								<div class="d-flex justify-content-center">
									<div class="spinner-border" style="width: 3rem; height: 3rem;"
										role="status">
										<span class="sr-only">Loading...</span>
									</div>
								</div>
							</div>
							<!-- [ 加载状态  ] End -->

						</div>
						<!-- [ Main Content ] end -->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- [ 主内容区 ] end -->

	<script type="text/javascript" src="assets/js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="assets/js/pre-loader.js"></script>
	<!-- 表单验证提示 -->
	<script src="assets/js/jquery.tips.js"></script>

	<script type="text/javascript">
		function setIcon(fid) {
			$("#MENU_ICON").val('<i class="' + fid.getAttribute("data-clipboard-text") + '"></i>');
			$("#Form").submit();
			$("#showform").hide();
			$("#jiazai").show();
		}
	</script>

</body>
</html>