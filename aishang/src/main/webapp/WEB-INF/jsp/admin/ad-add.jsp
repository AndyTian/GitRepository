<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link href="/js/kindeditor-4.1.10/themes/default/default.css" type="text/css" rel="stylesheet">
<script type="text/javascript" charset="utf-8" src="/js/kindeditor-4.1.10/kindeditor-all-min.js"></script>
<script type="text/javascript" charset="utf-8" src="/js/kindeditor-4.1.10/lang/zh_CN.js"></script>
<div style="padding:10px 10px 10px 10px">
	<form id="adAddForm" class="itemForm" method="post">
	    <table cellpadding="5">
	        <tr>
	            <td>内容标题:</td>
	            <td><input class="easyui-textbox" type="text" name="title" data-options="required:true" style="width: 280px;"></input></td>
	        </tr>
	         <tr>
	            <td>URL:</td>
	            <td><input class="easyui-textbox" type="text" name="url" style="width: 280px;"></input></td>
	        </tr>
	        <tr>
	            <td>图片:</td>
	            <td>
	                <input type="hidden" name="pic" />
	                <a href="javascript:void(0)" class="easyui-linkbutton onePicUpload">图片上传</a>
	            </td>
	        </tr>
	    </table>
	</form>
	<div style="padding:5px">
	    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="adAddPage.submitForm()">提交</a>
	    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="adAddPage.clearForm()">重置</a>
	</div>
</div>
<script type="text/javascript">
$(function(){
	AS.initOnePicUpload();
});
	var adAddPage  = {
			submitForm : function (){
				if(!$('#adAddForm').form('validate')){
					$.messager.alert('提示','表单还未填写完成!');
					return ;
				}
				
				$.post("/manage/ad/save",$("#adAddForm").serialize(), function(data){
					if(data.status == 200){
						$.messager.alert('提示','新增内容成功!');
    					$("#adList").datagrid("reload");
    					AS.closeCurrentWindow();
					}
				});
			},
			clearForm : function(){
				$('#adAddForm').form('reset');
				adAddEditor.html('');
			}
	};
</script>
