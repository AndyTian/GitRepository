<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link href="/js/kindeditor-4.1.10/themes/default/default.css" type="text/css" rel="stylesheet">
<script type="text/javascript" charset="utf-8" src="/js/kindeditor-4.1.10/kindeditor-all-min.js"></script>
<script type="text/javascript" charset="utf-8" src="/js/kindeditor-4.1.10/lang/zh_CN.js"></script>
<div style="padding:10px 10px 10px 10px">
	<form id="companyEditForm" class="itemForm" method="post">
		<input type="hidden" name="id"/>
	    <table cellpadding="5">
	        <tr>
	            <td>公司名称:</td>
	            <td><input class="easyui-textbox" type="text" name="name" data-options="required:true" style="width: 280px;"></input></td>
	        </tr>
	        <tr>
	            <td>图片1:</td>
	            <td>
	                <input type="hidden" name="pic1" />
	                <a href="javascript:void(0)" class="easyui-linkbutton onePicUpload">图片上传</a>
	            </td>
	        </tr>
	         <tr>
	            <td>图片2:</td>
	            <td>
	                <input type="hidden" name="pic2" />
	                <a href="javascript:void(0)" class="easyui-linkbutton onePicUpload">图片上传</a>
	            </td>
	        </tr>
	         <tr>
	            <td>图片3:</td>
	            <td>
	                <input type="hidden" name="pic3" />
	                <a href="javascript:void(0)" class="easyui-linkbutton onePicUpload">图片上传</a>
	            </td>
	        </tr>
	         <tr>
	            <td>简介:</td>
	             <td>
	                <textarea style="width:800px;height:500px;visibility:hidden;" name="summary"></textarea>
	            </td>
	        </tr>
	    </table>
	</form>
	<div style="padding:5px">
	    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="companyEditPage.submitForm()">提交</a>
	    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="companyEditPage.clearForm()">重置</a>
	</div>
</div>
<script type="text/javascript">
var companyEditEditor ;
$(function(){
	AS.initOnePicUpload();
	companyEditEditor = AS.createEditor("#companyEditForm [name=summary]");
});

var companyEditPage = {
		submitForm : function(){
			if(!$('#companyEditForm').form('validate')){
				$.messager.alert('提示','表单还未填写完成!');
				return ;
			}
			companyEditEditor.sync();
			
			$.post("/manage/company/edit",$("#companyEditForm").serialize(), function(data){
				if(data.status == 200){
					$.messager.alert('提示','新增内容成功!');
					$("#companyList").datagrid("reload");
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