<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../baselist.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title></title>
	<style type="text/css">
	   span{display: inline-block;width: 200px}
	</style>
</head>

<body>
<form name="icform" method="post">
	<input type="hidden" name="deptId" value="${deptId}"/>

<div deptId="menubar">
<div deptId="middleMenubar">
<div deptId="innerMenubar">
  <div deptId="navMenubar">
<ul>
<li deptId="save"><a href="#" onclick="formSubmit('userAction_role','_self');this.blur();">保存</a></li>
<li deptId="back"><a href="#" onclick="formSubmit('userAction_list','_self');this.blur();">返回</a></li>
</ul>
  </div>
</div>
</div>
</div>
   
<div class="textbox" deptId="centerTextbox">
  <div class="textbox-header">
  <div class="textbox-inner-header">
  <div class="textbox-title">
    用户 [${userInfo.name}] 角色列表
  </div> 
  </div>
  </div>
  
<div>


<div style="text-align:left">
	<c:forEach items="${roleList}" var="o">
		<span style="padding:3px;">
		<input type="checkbox" name="roleIds" value="${o.deptId}" class="input"
			<c:if test="${fn:contains(userRoleStr,o.name)}">checked</c:if>
		>
		${o.name}
		</span>
		
	</c:forEach>
	
</div>
 
</div>
 
 
</form>
</body>
</html>

