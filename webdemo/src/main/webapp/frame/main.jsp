<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>主页</title>
<style type="text/css">
	html,body{height:100%}
</style>
<!-- Bootstrap -->
<link href="../lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="../lib/ztree/css/zTreeStyle/zTreeStyle.css" type="text/css">
<link rel="stylesheet" href="../lib/font-awesome/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="../css/style.css" type="text/css">
<script src="http://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body >
	<c:import url="header.jsp" />
	<c:import url="left.jsp" />
	<c:import url="middle.jsp" />
	<c:import url="bottom.jsp" />
</body>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script> -->
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="../lib/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../lib/ztree/js/jquery.ztree.all-3.5.min.js"></script>

</html>