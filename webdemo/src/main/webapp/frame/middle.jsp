<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="frame-middle col-xs-9" >
	<div class="frame-middle-toolbar"> 
		<button type="button" class="btn btn-default btn-history-back" ><span class="glyphicon glyphicon-arrow-left"></span></button>
		<button type="button" class="btn btn-default btn-history-forward" ><span class="glyphicon glyphicon-arrow-right"></span></button>
		<button type="button" class="btn btn-default btn-resize-full" ><span class="glyphicon glyphicon-resize-full"></span></button>
		<button type="button" class="btn btn-default btn-resize-small" style="display: none;"><span class="glyphicon glyphicon-resize-small"></span></button>
	</div>
	<iframe id="frame-middle-iframe" src="http://v3.bootcss.com/"  onreadystatechange="fnStartInit()" frameborder=0 width="100%" height="100%" target="_self" ></iframe>
</div>

<script type="text/javascript">
		function fnStartInit(){
			alert(2);	
		};
	$(document).ready(function() {
		$('#frame-middle-iframe').load(function(response,status,xhr){
			console.log(response);
		});
		
		/**
		* 扩充
		*/
		$('.btn-resize-full').click(function(){
			$('.frame-left').hide();
			$('.btn-resize-small').show();
			$(this).hide();
			$('.frame-middle').removeClass("col-xs-9").addClass("col-xs-12");
		});
		
		/**
		* 缩小 
		*/
		$('.btn-resize-small').click(function(){
			$('.frame-left').show();
			$('.btn-resize-full').show();
			$(this).hide();
			$('.frame-middle').removeClass("col-xs-12").addClass("col-xs-9");
		});
		
		/**
		* 后退
		*/
		$('.btn-history-back').click(function(){
			history.back();
		});
		
		/**
		* 前进 
		*/
		$('.btn-history-forward').click(function(){
			history.forward();
		});
	});
</script>