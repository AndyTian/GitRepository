<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link href="/js/kindeditor-4.1.10/themes/default/default.css"
	type="text/css" rel="stylesheet">
<script type="text/javascript" charset="utf-8"
	src="/js/kindeditor-4.1.10/kindeditor-all-min.js"></script>
<script type="text/javascript" charset="utf-8"
	src="/js/kindeditor-4.1.10/lang/zh_CN.js"></script>
<div style="padding: 10px 10px 10px 10px">
	<form id="aboutusForm" class="itemForm" method="post" name="aboutusForm">
		<input type="hidden" name="id" id="id"/>
		<tr>
			<td><textarea
					style="width: 1200px; height: 700px; visibility: hidden;"
					name="content"></textarea></td>
		</tr>
	</form>
	<div style="padding: 5px">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			onclick="aboutusPage.submitForm()">提交</a> <a
			href="javascript:void(0)" class="easyui-linkbutton"
			onclick="aboutusPage.clearForm()">重置</a>
	</div>
</div>
<script type="text/javascript">
	var aboutusEditor;
	$(function() {
		AS.initOnePicUpload();
		aboutusEditor = AS
				.createEditor("#aboutusForm [name=content]");
		$.getJSON("/manage/aboutus/content",{},function(data){
			    $('#id').attr("value",data[0].id);
		       	aboutusEditor.html(data[0].content);
		}) 
	});

	var aboutusPage = {
		submitForm : function() {
			if (!$('#aboutusForm').form('validate')) {
				$.messager.alert('提示', '表单还未填写完成!');
				return;
			}
			aboutusEditor.sync();

			$.post("/manage/aboutus/edit", $("#aboutusForm")
					.serialize(), function(data) {
				if (data.status == 200) {
					$.messager.alert('提示', '新增内容成功!');
				}
			});
		},
		clearForm : function() {

		}
	};
</script>