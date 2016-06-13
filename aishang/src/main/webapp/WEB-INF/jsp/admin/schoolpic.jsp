<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="easyui-panel" title="Nested Panel" data-options="width:'100%',minHeight:500,noheader:true,border:false" style="padding:10px;">
    <div class="easyui-layout" data-options="fit:true">
        <div data-options="region:'center'" style="padding:5px">
            <table class="easyui-datagrid" id="schoolpicList" data-options="toolbar:schoolpicListToolbar,singleSelect:false,collapsible:true,pagination:true,method:'get',pageSize:20,url:'/manage/schoolpic/list'">
		    <thead>
		        <tr>
		            <th data-options="field:'id',width:100">ID</th>
		            <th data-options="field:'pic',width:50,align:'center',formatter:AISHANG.formatUrl">图片</th>
		            <th data-options="field:'created',width:130,align:'center',formatter:AISHANG.formatDateTime">创建日期</th>
		            <th data-options="field:'updated',width:130,align:'center',formatter:AISHANG.formatDateTime">更新日期</th>
		        </tr>
		    </thead>
		</table>
        </div>
    </div>
</div>
<script type="text/javascript">
var schoolpicListToolbar = [{
    text:'新增',
    iconCls:'icon-add',
    handler:function(){
    	AS.createWindow({
			url : "/manage/schoolpic-add"
		}); 
    }
},{
    text:'编辑',
    iconCls:'icon-edit',
    handler:function(){
    	var ids = AS.getSelectionsIds("#schoolpicList");
    	if(ids.length == 0){
    		$.messager.alert('提示','必须选择一个内容才能编辑!');
    		return ;
    	}
    	if(ids.indexOf(',') > 0){
    		$.messager.alert('提示','只能选择一个内容!');
    		return ;
    	}
		AS.createWindow({
			url : "/manage/schoolpic-edit",
			onLoad : function(){
				var data = $("#schoolpicList").datagrid("getSelections")[0];
				$("#schoolpicEditForm").form("load",data);
				
				// 实现图片
				if(data.pic){
					$("#schoolpicEditForm [name=pic]").after("<a href='"+data.pic+"' target='_blank'><img src='"+data.pic+"' width='80' height='50'/></a>");	
				}
			}
		});    	
    }
},{
    text:'删除',
    iconCls:'icon-cancel',
    handler:function(){
    	var ids = AS.getSelectionsIds("#schoolpicList");
    	if(ids.length == 0){
    		$.messager.alert('提示','未选中!');
    		return ;
    	}
    	$.messager.confirm('确认','确定删除ID为 '+ids+' 的内容吗？',function(r){
    	    if (r){
    	    	var params = {"ids":ids};
            	$.post("/manage/schoolpic/delete",params, function(data){
        			if(data.status == 200){
        				$.messager.alert('提示','删除内容成功!',undefined,function(){
        					$("#schoolpicList").datagrid("reload");
        				});
        			}
        		});
    	    }
    	});
    }
}];
</script>