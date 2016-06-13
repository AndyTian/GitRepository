<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="easyui-panel" title="Nested Panel" data-options="width:'100%',minHeight:800,noheader:true,border:false" style="padding:10px;">
    <div class="easyui-layout" data-options="fit:true">
        <div data-options="region:'center'" style="padding:5px">
            <table class="easyui-datagrid" id="companyList" data-options="toolbar:companyListToolbar,singleSelect:false,collapsible:true,pagination:true,method:'get',pageSize:20,url:'/manage/company/list'">
		    <thead>
		        <tr>
		            <th data-options="field:'id',width:200">ID</th>
		            <th data-options="field:'name',width:120">公司名称</th>
		            <th data-options="field:'pic1',width:50,align:'center',formatter:AISHANG.formatUrl">图片1</th>
		            <th data-options="field:'pic2',width:50,align:'center',formatter:AISHANG.formatUrl">图片2</th>
		            <th data-options="field:'pic3',width:50,align:'center',formatter:AISHANG.formatUrl">图片3</th>
		            <th data-options="field:'summary',width:500,align:'center'">简介</th>
		            <th data-options="field:'created',width:130,align:'center',formatter:AISHANG.formatDateTime">创建日期</th>
		            <th data-options="field:'updated',width:130,align:'center',formatter:AISHANG.formatDateTime">更新日期</th>
		        </tr>
		    </thead>
		</table>
        </div>
    </div>
</div>
<script type="text/javascript">
var companyListToolbar = [{
    text:'新增',
    iconCls:'icon-add',
    handler:function(){
    	AS.createWindow({
			url : "/manage/company-add"
		}); 
    }
},{
    text:'编辑',
    iconCls:'icon-edit',
    handler:function(){
    	var ids = AS.getSelectionsIds("#companyList");
    	if(ids.length == 0){
    		$.messager.alert('提示','必须选择一个内容才能编辑!');
    		return ;
    	}
    	if(ids.indexOf(',') > 0){
    		$.messager.alert('提示','只能选择一个内容!');
    		return ;
    	}
		AS.createWindow({
			url : "/manage/company-edit",
			onLoad : function(){
				var data = $("#companyList").datagrid("getSelections")[0];
				$("#companyEditForm").form("load",data);
				
				// 实现图片
				if(data.pic1){
					$("#companyEditForm [name=pic1]").after("<a href='"+data.pic+"' target='_blank'><img src='"+data.pic1+"' width='80' height='50'/></a>");	
				}
				if(data.pic2){
					$("#companyEditForm [name=pic2]").after("<a href='"+data.pic2+"' target='_blank'><img src='"+data.pic2+"' width='80' height='50'/></a>");					
				}
				if(data.pic3){
					$("#companyEditForm [name=pic3]").after("<a href='"+data.pic2+"' target='_blank'><img src='"+data.pic3+"' width='80' height='50'/></a>");					
				}
				companyEditEditor.html(data.summary);
			}
		});    	
    }
},{
    text:'删除',
    iconCls:'icon-cancel',
    handler:function(){
    	var ids = AS.getSelectionsIds("#companyList");
    	if(ids.length == 0){
    		$.messager.alert('提示','未选中!');
    		return ;
    	}
    	$.messager.confirm('确认','确定删除ID为 '+ids+' 的内容吗？',function(r){
    	    if (r){
    	    	var params = {"ids":ids};
            	$.post("/manage/company/delete",params, function(data){
        			if(data.status == 200){
        				$.messager.alert('提示','删除内容成功!',undefined,function(){
        					$("#companyList").datagrid("reload");
        				});
        			}
        		});
    	    }
    	});
    }
}];
</script>