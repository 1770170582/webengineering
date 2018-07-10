<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>学生课程（公告）</title>
		<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="css/bootstrap2.min.css" />
		<link rel="stylesheet" href="css/学生主页.css" />
		<link rel="stylesheet" href="css/demo.css" />
		<link rel="stylesheet" href="css/normalize.css" />
		<link rel="stylesheet" href="css/searchstyle.css" />
		<link rel="stylesheet" href="css/导航栏样式.css" />
		<link rel="stylesheet" href="css/学生课程页面（总览）.css" />
		<link rel="stylesheet" href="css/消息组件.css" />
	</head>

	<body class="container">
		<!--logo部分-->
		<div class="container">
			<div class="row" style="background: #c4c4c4;margin-left: 0px;margin-right: 0px;border-radius: 8px;">
				<div class="col-lg-8">
					<img src="images/logo3.png" style="height: 70px;" />
				</div>
				<div class="col-lg-4 text-right" style="padding-top: 30px;">
					<a href="#">个人中心</a>
					<a href="/logoutUser.action">注销</a>
				</div>
			</div>
		</div>

		<!--导航栏-->
		<div class="container" style="margin-top: 10px;">
			<nav class="navbar navbar-default nav1 green" style="margin-top: 0px;">
				<div class="container-fluid">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#ToBeHidden" aria-expanded="false" style="color: white;">
					        <span class="sr-only">Toggle navigation</span>
					        <span class="icon-bar"></span>
					        <span class="icon-bar"></span>
					        <span class="icon-bar"></span>
					    </button>
						<a class="navbar-brand" href="/jumpToUserIndex.action" style="color: white;font-size: 25px;">首页</a>
					</div>

					<div class="collapse navbar-collapse" id="ToBeHidden">
						<ul class="nav navbar-nav">
							<li>
								<a href="/jumpToMyCourse.action" style="color: white;font-size: 20px;">我的课程 <span class="sr-only">(current)</span></a>
							</li>
							<li>
								<a href="#" style="color: white;font-size: 20px;">我的作业</a>
							</li>
							<li>
								<a href="#" style="color: white;font-size: 20px;">我的讨论</a>
							</li>
						</ul>
						<script>
							function submitsearch() {
								$.ajax({
									type: "GET",
									url: "",
									data: {
										"searchclass": $("#searchcourse").val()
									},
									async: true,
									success: function() {
										/*showResult();*/
										/*alert("success");*/
										$("#SearchResult").show();
									},
									error: function() {
										alert("error");
									}
								});
							}
						</script>
						<form class="navbar-form navbar-right" role="search" style="margin-top: 5px;margin-bottom: 5px;">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="搜索您想要的内容" id="searchcourse" name="searchclass" style="border: 2px solid #324b4e;background: #F9F0DA;border-radius: 24px;">
							</div>
							<button type="button" class="btn btn-default" onclick="submitsearch()" style="border: 1px solid #324b4e;margin-left: 5px;">搜索</button>
						</form>
					</div>
				</div>
			</nav>
		</div>

		<!--选中课程信息-->
		<div class="container">
			<ul class="list-inline" style="padding-top: 10px;">
				<li>课程名称</li>
				<li>学校</li>
				<li>任课教师</li>
				<li>课堂班级</li>
			</ul>
		</div>

		<!--左侧导航栏和右侧公告-->
		
		<div class="col-lg-2 col-md-2 col-sm-2">
			<ul class="nav nav-pills hidden-lg hidden-md hidden-sm" >

				<li role="presentation" class="active" style="padding-top: 5px;padding-bottom: 5px;">
					<a href="/jumpToCourseNotice.action">公告</a>
				</li>
				<li role="presentation" style="padding-top: 5px;padding-bottom: 5px;">
					<a href="/jumpToCourseQuestion.action">问题</a>
				</li>
				<li role="presentation" style="padding-top: 5px;padding-bottom: 5px;">
					<a href="/jumpToCourseHomeWork.action">作业</a>
				</li>
				<li role="presentation" style="padding-top: 5px;padding-bottom: 5px;">
					<a href="#">讨论</a>
				</li>
			</ul>
			<ul class="nav nav-pills nav-stacked hidden-xs" >

				<li role="presentation" class="active" style="padding-top: 5px;padding-bottom: 5px;">
					<a href="/jumpToCourseNotice.action">公告</a>
				</li>
				<li role="presentation" style="padding-top: 5px;padding-bottom: 5px;">
					<a href="/jumpToCourseQuestion.action">问题</a>
				</li>
				<li role="presentation" style="padding-top: 5px;padding-bottom: 5px;">
					<a href="/jumpToCourseHomeWork.action">作业</a>
				</li>
				<li role="presentation" style="padding-top: 5px;padding-bottom: 5px;">
					<a href="#">讨论</a>
				</li>
			</ul>

		</div>
		<!--右侧公告内容-->
		<div class="col-lg-10 col-md-10 col-sm-10">
			<div class="bloglist" style="margin-left: 0px; padding-right: 0px;background-image: url(images/消息背景2.jpg);border-radius: 8px;">
				<div class="messageBox">
					<h3><a href="#" style="color: black;">【公告】消息主题</a></h3>
					<ul style="width: auto;margin-right: 10px;">
						<div class="dot-ellipsis dot-height-50 dot-resize-update">
							<p id="1"> 公告内容摘要：
								<!--描述：最多70个字，最后要加上...-->
								一二三四五六七八九十 一二三四五六七八九十 一二三四五六七八九十 一 二三四五六七八九十 一二三四五六七八九十 一二三四五六七八九十 一二三四五六七八九十...
							</p>
						</div>
						<a href="#" class="readmore">查看&gt;&gt;</a>
					</ul>
					<p class="dateview"><span>2017-10-13 15:20</span><span>消息状态：[<a href="#">未读/已读</a>]</span></p>
				</div>

				<div class="messageBox">
					<h3><a href="#" style="color: black;">【公告】消息主题</a></h3>
					<ul style="width: auto;margin-right: 10px;">
						<div class="dot-ellipsis dot-height-50 dot-resize-update">
							<p id="1"> 公告内容摘要：
								<!--描述：最多70个字，最后要加上...-->
								一二三四五六七八九十 一二三四五六七八九十 一二三四五六七八九十 一 二三四五六七八九十 一二三四五六七八九十 一二三四五六七八九十 一二三四五六七八九十...
							</p>
						</div>
						<a href="#" class="readmore">查看&gt;&gt;</a>
					</ul>
					<p class="dateview"><span>2017-10-13 15:20</span><span>消息状态：[<a href="#">未读/已读</a>]</span></p>
				</div>

				<div class="messageBox">
					<h3><a href="#" style="color: black;">【公告】消息主题</a></h3>
					<ul style="width: auto;margin-right: 10px;">
						<div class="dot-ellipsis dot-height-50 dot-resize-update">
							<p id="1"> 公告内容摘要：
								<!--描述：最多70个字，最后要加上...-->
								一二三四五六七八九十 一二三四五六七八九十 一二三四五六七八九十 一 二三四五六七八九十 一二三四五六七八九十 一二三四五六七八九十 一二三四五六七八九十...
							</p>
						</div>
						<a href="#" class="readmore">查看&gt;&gt;</a>
					</ul>
					<p class="dateview"><span>2017-10-13 15:20</span><span>消息状态：[<a href="#">未读/已读</a>]</span></p>
				</div>
			</div>
		</div>

		<!--分页-->
		<div class="container mypage">
			<ul class="pager" style="text-align:center; width: 100%;margin-bottom: 5px;">
				<li>
					<a><span aria-hidden="true">&laquo;</span>
					</a>
				</li>
				<li>
					<a href="#">&lt;</a>
				</li>
				<li>
					<a href="#">1</a>
				</li>
				<li>
					<a href="#">2</a>
				</li>
				<li>
					<a href="#">3</a>
				</li>
				<li>
					<a href="#">4</a>
				</li>
				<li>
					<a href="#">5</a>
				</li>
				<li>
					<a href="#">&gt;</a>
				</li>
				<li>
					<a href="#" aria-label="Next">
						<span aria-hidden="true">&raquo;</span>
					</a>
				</li>
			</ul>
			<p style="text-align: center;font-family: '微软雅黑';margin-top: 0px;">
				共<span>几</span>页&nbsp;&nbsp;&nbsp;共<span>几</span>条
			</p>
		</div>
		<!--底部版权声明-->
		<div class="container">
			<div class="row text-center" id="below" style="margin-left: 0px;margin-right: 0px;border-radius: 8px;height: 50px;">
				<p>版权声明</p>
			</div>
		</div>
		<!--搜索结果（浮动）-->
		<script>
			function hiddenResult() {
				$("#SearchResult").hide();

			}
		</script>
		<div id="SearchResult" style="display: none; width: 400px;height: 336px; background-color: white;float: left;position: absolute;left: 30%;right: 50%;top: 30%;bottom: 50%; z-index: 1;">
			<div class="courseMessage" style="width: 400px;margin-top: 0px;background-image: url(images/背景1.jpg);">
				<div style="text-align: center;font-size: 20px;">
					<p>您查找的课程是否为：<span>课程名</span>？</p>
				</div>

				<div style="text-align: center;">
					<!--img-->
					<a href="#">
						<img src="images/课程.jpg" style="width: 240px; height: 150px;" />
					</a>
				</div>
				<div style="text-align: center;">
					<!--text-->
					<p>课程名称：<span>xxx</span></p>
					<p>任课教师：<span>xxx</span></p>
					<p>所选课程所在学校：<span>xxx</span></p>
					<p>班级人数：<span>xxx</span></p>
				</div>
				<div style="text-align: center;padding-bottom: 5px;">
					<p style="font-size: 18px;">您确定要选择加入该课程吗？</p>
					<button type="button" class="btn btn-default" style="margin-right: 100px;" onclick="hiddenResult()">确定</button>
					<button type="button" class="btn btn-default" onclick="hiddenResult()">取消</button>
				</div>

			</div>
		</div>
	</body>

</html>