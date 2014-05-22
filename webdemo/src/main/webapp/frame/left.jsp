<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="frame-left col-xs-3" > 
	<div class="frame-left-content col-xs-12">
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
	
	var Person = function (a,b){
		this.a = a;
		this.b = b;
	}
	
	Person.prototype.getName = function(){  
         return 1;  
 	};  
 
	var Child = function(c){
		this.c = c;
	}
	
	extend(Child,Person);
	
	function extend(sub,superClass){
		 if(typeof superClass !== 'function'){  
            throw new Error('fatal error:Function.prototype.extend expects a constructor of class');  
         }  
		 
		 var F = function(){};
		 
		 F.prototype = superClass.prototype;
		 sub.prototype = new F(); //实例化F, 继承父类的原型中的属性和方法，而无需调用父类的构造函数实例化无关的父类成员  
		 sub.prototype.constructor = sub; //设置构造函数指向自己  
		 sub.superClass = superClass; //同时，添加一个指向父类构造函数的引用，方便调用父类方法或者调用父类构造函数  
          
        return sub;  
	}
	
	console.log(new Person(1,2));
	console.log(new Child(3).getName());
</script>
