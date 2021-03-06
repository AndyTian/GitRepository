<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link href="/js/kindeditor-4.1.10/themes/default/default.css" type="text/css" rel="stylesheet">
<script type="text/javascript" charset="utf-8" src="/js/kindeditor-4.1.10/kindeditor-all-min.js"></script>
<script type="text/javascript" charset="utf-8" src="/js/kindeditor-4.1.10/lang/zh_CN.js"></script>
<div style="padding:10px 10px 10px 10px">
	<form id="courseEditForm" class="itemForm" method="post">
		<input type="hidden" name="id"/>
	    <table cellpadding="5">
	       <tr>
	            <td>课程名:</td>
	            <td><input class="easyui-textbox" type="text" name="name" data-options="required:true" style="width: 280px;"></input></td>
	        </tr>
	        <tr>
	            <td>标题:</td>
	            <td><input class="easyui-textbox" type="text" name="title" style="width: 380px;"></input></td>
	        </tr>
	           <tr>
	            <td>图片:</td>
	            <td>
	                <input type="hidden" name="pic" />
	                <a href="javascript:void(0)" class="easyui-linkbutton onePicUpload">图片上传</a>
	            </td>
	        </tr>
	        <tr>
	            <td>学期:</td>
	            <td><input class="easyui-textbox" type="text" name="term" style="width: 280px;"></input></td>
	        </tr>
	        <tr>
	            <td>学费:</td>
	            <td><input class="easyui-textbox" type="text" name="cost" style="width: 280px;"></input></td>
	        </tr>
	         <tr>
	            <td>简介:</td>
	             <td>
	                <textarea style="width:1300px;height:500px;visibility:hidden;" name="summary"></textarea>
	            </td>
	        </tr>
	    </table>
	</form>
	<div style="padding:5px">
	    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="courseEditPage.submitForm()">提交</a>
	    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="courseEditPage.clearForm()">重置</a>
	</div>
</div>
<script type="text/javascript">
var courseEditEditor ;
$(function(){
	AS.initOnePicUpload();
	//实例化编辑器
	courseEditEditor = AISHANG.createEditor("#courseEditForm [name=summary]");
});
var courseEditPage = {
		submitForm : function(){
			if(!$('#courseEditForm').form('validate')){
				$.messager.alert('提示','表单还未填写完成!');
				return ;
			}
			courseEditEditor.sync();
			
			$.post("/manage/course/edit",$("#courseEditForm").serialize(), function(data){
				if(data.status == 200){
					$.messager.alert('提示','新增内容成功!');
					$("#courseList").datagrid("reload");
					AS.closeCurrentWindow();
				}else{
					$.messager.alert('提示','内容过多!');
				}
			});
		},
		clearForm : function(){
			
		}
};

</script>