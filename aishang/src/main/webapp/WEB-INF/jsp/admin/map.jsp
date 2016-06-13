<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link href="/js/kindeditor-4.1.10/themes/default/default.css"
	type="text/css" rel="stylesheet">
<script type="text/javascript" charset="utf-8"
	src="/js/kindeditor-4.1.10/kindeditor-all-min.js"></script>
<script type="text/javascript" charset="utf-8"
	src="/js/kindeditor-4.1.10/lang/zh_CN.js"></script>
<div style="padding: 10px 10px 10px 10px">
	<form id="mapForm" class="itemForm" method="post" name="mapForm">
		<input type="hidden" name="id" id="id"/>
		<tr>
			<td><textarea
					style="width: 1200px; height: 700px; visibility: hidden;"
					name="content"></textarea></td>
		</tr>
	</form>
	<div style="padding: 5px">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			onclick="mapPage.submitForm()">提交</a> <a
			href="javascript:void(0)" class="easyui-linkbutton"
			onclick="mapPage.clearForm()">重置</a>
	</div>
</div>
<script type="text/javascript">
	var mapEditor;
	$(function() {
		AS.initOnePicUpload();
		mapEditor = AS
				.createEditor("#mapForm [name=content]");
		$.getJSON("/manage/map/content",{},function(data){
			    $('#id').attr("value",data[0].id);
		       	mapEditor.html(data[0].content);
		}) 
	});

	var mapPage = {
		submitForm : function() {
			if (!$('#mapForm').form('validate')) {
				$.messager.alert('提示', '表单还未填写完成!');
				return;
			}
			mapEditor.sync();

			$.post("/manage/map/edit", $("#mapForm")
					.serialize(), function(data) {
				if (data.status == 200) {
					$.messager.alert('提示', '新增内容成功!');
				}else{
					$.messager.alert('提示', '内容超出限制!');
				}
			});
		},
		clearForm : function() {

		}
	};
</script>