<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link href="/js/kindeditor-4.1.10/themes/default/default.css" type="text/css" rel="stylesheet">
<script type="text/javascript" charset="utf-8" src="/js/kindeditor-4.1.10/kindeditor-all-min.js"></script>
<script type="text/javascript" charset="utf-8" src="/js/kindeditor-4.1.10/lang/zh_CN.js"></script>
<div style="padding:10px 10px 10px 10px">
	<form id="customerAddForm" class="itemForm" method="post">
	    <table cellpadding="5">
	         <tr>
	            <td>姓名:</td>
	            <td><input class="easyui-textbox" type="text" name="name" data-options="required:true" style="width: 280px;"></input></td>
	        </tr>
	         <tr>
	            <td>体重:</td>
	            <td><input class="easyui-textbox" type="text" name="weight" data-options="required:true" style="width: 280px;"></input></td>
	        </tr>
	         <tr>
	            <td>身高:</td>
	            <td><input class="easyui-textbox" type="text" name="height" data-options="required:true" style="width: 280px;"></input></td>
	        </tr>
	         <tr>
	            <td>年龄:</td>
	            <td><input class="easyui-textbox" type="text" name="age" data-options="required:true" style="width: 280px;"></input></td>
	        </tr>
	         <tr>
	            <td>城市:</td>
	            <td><input class="easyui-textbox" type="text" name="city" data-options="required:true" style="width: 280px;"></input></td>
	        </tr>
	         <tr>
	            <td>email:</td>
	            <td><input class="easyui-textbox" type="text" name="email" data-options="required:true" style="width: 280px;"></input></td>
	        </tr>
	         <tr>
	            <td>电话:</td>
	            <td><input class="easyui-textbox" type="text" name="phonenum" data-options="required:true" style="width: 280px;"></input></td>
	        </tr>
	         <tr>
	            <td>内容:</td>
	             <td>
	                <textarea style="width:800px;height:500px;visibility:hidden;" name="message"></textarea>
	            </td>
	        </tr>
	    </table>
	</form>
	<div style="padding:5px">
	    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="customerAddPage.submitForm()">提交</a>
	    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="customerAddPage.clearForm()">重置</a>
	</div>
</div>
<script type="text/javascript">
$(function(){
	customerAddEditor = AS.createEditor("#customerAddForm [name=message]");
});
	var customerAddPage  = {
			submitForm : function (){
				if(!$('#customerAddForm').form('validate')){
					$.messager.alert('提示','表单还未填写完成!');
					return ;
				}
				customerAddEditor.sync();
				
				$.post("/manage/customer/save",$("#customerAddForm").serialize(), function(data){
					if(data.status == 200){
						$.messager.alert('提示','新增内容成功!');
    					$("#customerList").datagrid("reload");
    					AS.closeCurrentWindow();
					}else{
						$.messager.alert('提示','内容过多!');
					}
				});
			},
			clearForm : function(){
				$('#customerAddForm').form('reset');
				customerAddEditor.html('');
			}
	};
</script>
