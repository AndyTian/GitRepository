<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="images/favicon.ico" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>艾尚教育后台管理系统</title>
<link rel="stylesheet" type="text/css" href="js/jquery-easyui-1.4.1/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css" href="js/jquery-easyui-1.4.1/themes/icon.css" />
<link rel="stylesheet" type="text/css" href="css/aishang.css" />
<script type="text/javascript" src="js/jquery-easyui-1.4.1/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery-easyui-1.4.1/jquery.easyui.min.js"></script>
<script type="text/javascript" src="js/jquery-easyui-1.4.1/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<style type="text/css">
	.content {
		padding: 10px 10px 10px 10px;
	}
</style>
</head>
<body class="easyui-layout">
    <div data-options="region:'west',title:'菜单',split:true" style="width:180px;">
    	<ul id="menu" class="easyui-tree" style="margin-top: 10px;margin-left: 5px;">
         	<li>
         		<span>内容管理</span>
	         	<ul>
	         		<li data-options="attributes:{'url':'manage/course'}">课程管理</li>
	         	</ul>
	         	<ul>
	         		<li data-options="attributes:{'url':'manage/ad'}">轮播图管理</li>
	         	</ul>
	         	<ul>
	         		<li data-options="attributes:{'url':'manage/schoolpic'}">校园风景管理</li>
	         	</ul>
	         	<ul>
	         		<li data-options="attributes:{'url':'manage/student'}">优秀学员管理</li>
	         	</ul>
	         	<ul>
	         		<li data-options="attributes:{'url':'manage/company'}">合作企业管理</li>
	         	</ul>
	         	<ul>
	         		<li data-options="attributes:{'url':'manage/teacher'}">教师管理</li>
	         	</ul>
	         	<ul>
	         		<li data-options="attributes:{'url':'manage/activity'}">实践活动管理</li>
	         	</ul>
	         	<ul>
	         		<li data-options="attributes:{'url':'manage/schoollife'}">校园生活管理</li>
	         	</ul>
	         	<ul>
	         		<li data-options="attributes:{'url':'manage/aboutus'}">关于我们管理</li>
	         	</ul>
	         	<ul>
	         		<li data-options="attributes:{'url':'manage/map'}">地址管理</li>
	         	</ul>
         	</li>
         	<li>
         		<span>查看客户</span>
         		<ul>
	         		<li data-options="attributes:{'url':'manage/customer-list'}">客户列表</li>
	         	</ul>
	         </li>
         </ul>
    </div>
    <div data-options="region:'center',title:''">
    	<div id="tabs" class="easyui-tabs">
		    <div title="首页" style="padding:20px;">
		        	
		    </div>
		</div>
    </div>
    
<script type="text/javascript">
$(function(){
	$('#menu').tree({
		onClick: function(node){
			if($('#menu').tree("isLeaf",node.target)){
				var tabs = $("#tabs");
				var tab = tabs.tabs("getTab",node.text);
				if(tab){
					tabs.tabs("select",node.text);
				}else{
					tabs.tabs('add',{
					    title:node.text,
					    href: node.attributes.url,
					    closable:true,
					    bodyCls:"content"
					});
				}
			}
		}
	});
});
</script>
</body>
</html>