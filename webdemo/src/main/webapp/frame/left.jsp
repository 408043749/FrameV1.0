<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="frame-left col-xs-3" style="height: 80%;">
	<div class="frame-left-content col-xs-12"
		style="height: 100%; box-shadow: 1px 1px 100px; border-radius: 5px;">
		<div id="treeDemo" class="ztree"></div>
	</div>
</div>

<script type="text/javascript">
	var setting = {
		callback: {
			onClick: menuOnClick
		}
	};
	
	function menuOnClick(event, treeId, treeNode){
		$('#frame-middle-iframe').attr("src",treeNode.data_url);
	}
	
	function init() {
		$.getJSON('<c:url value="/json/menu.json"/>', function(data) {
			var menu = $.fn.zTree.init($("#treeDemo"), setting, data);
			menu.expandAll(true);

		});
	}

	$(document).ready(function() {
		init();
	});
</script>