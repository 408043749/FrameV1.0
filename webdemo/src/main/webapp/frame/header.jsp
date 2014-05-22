<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<nav class="navbar navbar-inverse" role="navigation"> 
	<!-- Brand and toggle get grouped for better mobile display -->
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target="#bs-example-navbar-collapse-9">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="#">Brand</a>
	</div>

	<!-- Collect the nav links, forms, and other content for toggling -->
	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-9">
		<ul class="nav navbar-nav">
			<li class="active"><a href="#">Home</a></li>
			<li><a href="#">网站</a></li>
			<li><a href="<c:url value="/plugins-demo/ace.jsp"/>">编辑器</a></li>
			<li><a href="#">Link</a></li>

		</ul>
			
		<!-- 如果要搜索自己的网站  需要在google账号个人设置中添加网站   表单提交地址为http://www.google.com/cse -->
		<!-- <form class="navbar-form navbar-left" role="search" method="get" id="cse-search-box" action="http://www.google.com/search" target="frame-middle-iframe">
			<div class="form-group">
				<input type="hidden" name="cx" value="004127136211006365344:2ife92a3y44" />
				<input type="hidden" name="ie" value="UTF-8" />
				<input type="text" class="form-control" placeholder="Search" name="q" id="s" />
				<input type="submit" id="searchsubmit" class="btn btn-default" name="sa" value="搜索" />
			</div>
		</form> -->

		<form class="navbar-form navbar-left" role="search" method="get" id="cse-search-box" target="frame-middle-iframe" action="http://www.baidu.com/baidu">
			<table bgcolor="#FFFFFF">
				<div class="form-group">
					<input type="hidden" name="ie" value="UTF-8" />
					<input type=text  class="form-control" placeholder="Search"  name=word >
					<input type="submit" id="searchsubmit" class="btn btn-default" name="sa" value="搜索" />
				</div>
			</table>
		</form>

	</div>
	<!-- /.navbar-collapse -->
</nav>

