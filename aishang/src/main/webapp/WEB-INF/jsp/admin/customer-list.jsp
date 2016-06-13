<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<table class="easyui-datagrid" id="customerList" title="客户列表" 
       data-options="toolbar:customerListToolbar,singleSelect:false,collapsible:true,pagination:true,url:'/manage/customer/list',method:'get',pageSize:30">
    <thead>
        <tr>
        	<th data-options="field:'id',width:60">客户ID</th>
            <th data-options="field:'name',width:100">姓名</th>
            <th data-options="field:'weight',width:100">体重</th>
            <th data-options="field:'height',width:100">身高</th>
            <th data-options="field:'age',width:100">年龄</th>
            <th data-options="field:'city',width:100">城市</th>
            <th data-options="field:'email',width:200">email</th>
            <th data-options="field:'phonenum',width:100,align:'right'">电话</th>
            <th data-options="field:'message',width:600">留言</th>
            <th data-options="field:'created',width:200,align:'center',formatter:AISHANG.formatDateTime">创建日期</th>
        </tr>
    </thead>
</table>
<script type="text/javascript">
var customerListToolbar = [{
    text:'新增',
    iconCls:'icon-add',
    handler:function(){
    	AS.createWindow({
			url : "/manage/customer-add"
		}); 
    }
},{
    text:'编辑',
    iconCls:'icon-edit',
    handler:function(){
    	var ids = AS.getSelectionsIds("#customerList");
    	if(ids.length == 0){
    		$.messager.alert('提示','必须选择一个内容才能编辑!');
    		return ;
    	}
    	if(ids.indexOf(',') > 0){
    		$.messager.alert('提示','只能选择一个内容!');
    		return ;
    	}
		AS.createWindow({
			url : "/manage/customer-edit",
			onLoad : function(){
				var data = $("#customerList").datagrid("getSelections")[0];
				$("#customerEditForm").form("load",data);
				customerEditEditor.html(data.message);
			}
		});    	
    }
},{
    text:'删除',
    iconCls:'icon-cancel',
    handler:function(){
    	var ids = AS.getSelectionsIds("#customerList");
    	if(ids.length == 0){
    		$.messager.alert('提示','未选中!');
    		return ;
    	}
    	$.messager.confirm('确认','确定删除ID为 '+ids+' 的内容吗？',function(r){
    	    if (r){
    	    	var params = {"ids":ids};
            	$.post("/manage/customer/delete",params, function(data){
        			if(data.status == 200){
        				$.messager.alert('提示','删除内容成功!',undefined,function(){
        					$("#customerList").datagrid("reload");
        				});
        			}
        		});
    	    }
    	});
    }
}];
</script>