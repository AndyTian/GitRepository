<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link href="/js/kindeditor-4.1.10/themes/default/default.css" type="text/css" rel="stylesheet">
<script type="text/javascript" charset="utf-8" src="/js/kindeditor-4.1.10/kindeditor-all-min.js"></script>
<script type="text/javascript" charset="utf-8" src="/js/kindeditor-4.1.10/lang/zh_CN.js"></script>
<div style="padding:10px 10px 10px 10px">
	<form id="schoollifeAddForm" class="itemForm" method="post">
	    <table cellpadding="5">
	        <tr>
	            <td>标题:</td>
	            <td><input class="easyui-textbox" type="text" name="title" data-options="required:true" style="width: 280px;"></input></td>
	        </tr>
	         <tr>
	            <td>内容:</td>
	             <td>
	                <textarea style="width:800px;height:500px;visibility:hidden;" name="content"></textarea>
	            </td>
	        </tr>
	    </table>
	</form>
	<div style="padding:5px">
	    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="schoollifeAddPage.submitForm()">提交</a>
	    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="schoollifeAddPage.clearForm()">重置</a>
	</div>
</div>
<script type="text/javascript">
$(function(){
	AS.initOnePicUpload();
	schoollifeAddEditor = AS.createEditor("#schoollifeAddForm [name=content]");
});
	var schoollifeAddPage  = {
			submitForm : function (){
				if(!$('#schoollifeAddForm').form('validate')){
					$.messager.alert('提示','表单还未填写完成!');
					return ;
				}
				schoollifeAddEditor.sync();
				
				$.post("/manage/schoollife/save",$("#schoollifeAddForm").serialize(), function(data){
					if(data.status == 200){
						$.messager.alert('提示','新增内容成功!');
    					$("#schoollifeList").datagrid("reload");
    					AS.closeCurrentWindow();
					}else{
						$.messager.alert('提示','内容过多!');
					}
				});
			},
			clearForm : function(){
				$('#schoollifeAddForm').form('reset');
				schoollifeAddEditor.html('');
			}
	};
</script>
