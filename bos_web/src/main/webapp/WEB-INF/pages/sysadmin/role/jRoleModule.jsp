<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../baselist.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title></title>
	<link rel="stylesheet" href="${ctx }/components/zTree/css/zTreeStyle/zTreeStyle.css" type="text/css" />

	<script type="text/javascript" src="${ctx }/components/zTree/js/jquery-1.4.4.min.js"></script>
	<script type="text/javascript" src="${ctx }/components/zTree/js/jquery.ztree.core-3.5.min.js"></script>
	<script type="text/javascript" src="${ctx }/components/zTree/js/jquery.ztree.excheck-3.5.min.js"></script>
	<script type="text/javascript">
		var zTreeObj;
		var setting = {
			check : {
				enable : true
			},
			data : {
				simpleData : {
					enable : true
				}
			}
		};
		
		$(document).ready(function() {
			$.ajax( {
				url : "${ctx}/sysadmin/roleAction_roleModuleJsonStr.action?deptId=${deptId}",
				type : "get",
				dataType : "text",
				success : initZtree
			});
		});
		
		//初始化ZTree树
		function initZtree(data) {
			var zNodes = eval("(" + data + ")");		//动态js语句
			zTreeObj = $.fn.zTree.init($('#jkTree'), setting, zNodes);	//jkTree 树的id，支持多个树
			zTreeObj.expandAll(true);		//展开所有树节点
		}
		
		//获取所有选择的节点
		function submitCheckedNodes() {
			var nodes = new Array();
			nodes = zTreeObj.getCheckedNodes(true);		//取得选中的结点
			var str = "";
			for (i = 0; i < nodes.length; i++) {
				if (str != "") {
					str += ",";
				}
				str += nodes[i].deptId;
			}
			$('#moduleIds').val(str);
		}
	</script>
</head>

<body>
<form name="icform" method="post">
	<input type="hidden" name="deptId" value="${deptId}"/>
	<input type="hidden" deptId="moduleIds" name="moduleIds" value="" />
<div deptId="menubar">
<div deptId="middleMenubar">
<div deptId="innerMenubar">
  <div deptId="navMenubar">
<ul>
<li deptId="save"><a href="#" onclick="submitCheckedNodes();formSubmit('roleAction_module','_self');this.blur();">保存</a></li>
<li deptId="back"><a href="#" onclick="formSubmit('roleAction_list','_self');this.blur();">返回</a></li>
</ul>
  </div>
</div>
</div>
</div>
   
<div class="textbox" deptId="centerTextbox">
  <div class="textbox-header">
  <div class="textbox-inner-header">
  <div class="textbox-title">
    配置 [${name}] 角色的模块  
  </div> 
  </div>
  </div>
  
<%-- <div>


<div style="text-align:left">
	<c:forEach items="${moduleList}" var="o">
		<div style="padding:3px;">
		<input type="checkbox" name="moduleIds" value="${o.deptId}" class="input"
			<c:if test="${fn:contains(roleModuleStr,o.deptId)}">checked</c:if>
		>
		${o.name}
		</div>
	</c:forEach>
</div>
 
</div> --%>
<div>  
	<ul deptId="jkTree" class="ztree"></ul>
</div>
 
 
</form>
</body>
</html>

