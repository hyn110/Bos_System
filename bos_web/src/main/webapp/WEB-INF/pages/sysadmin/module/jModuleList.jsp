<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../baselist.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title></title>
</head>

<body>
<form name="icform" method="post">

<div deptId="menubar">
<div deptId="middleMenubar">
<div deptId="innerMenubar">
  <div deptId="navMenubar">
<ul>
<li deptId="view"><a href="#" onclick="formSubmit('moduleAction_toview','_self');this.blur();">查看</a></li>
<li deptId="new"><a href="#" onclick="formSubmit('moduleAction_tocreate','_self');this.blur();">新增</a></li>
<li deptId="update"><a href="#" onclick="formSubmit('moduleAction_toupdate','_self');this.blur();">修改</a></li>
<li deptId="delete"><a href="#" onclick="formSubmit('moduleAction_delete','_self');this.blur();">删除</a></li>
</ul>
  </div>
</div>
</div>
</div>
   
<div class="textbox" deptId="centerTextbox">
  <div class="textbox-header">
  <div class="textbox-inner-header">
  <div class="textbox-title">
    模块列表
  </div> 
  </div>
  </div>
  
<div>


<div class="eXtremeTable" >
<table deptId="ec_table" class="tableRegion" width="98%" >
	<thead>
	<tr>
		<td class="tableHeader"><input type="checkbox" name="selid" onclick="checkAll('deptId',this)"></td>
		<td class="tableHeader">序号</td>
		<td class="tableHeader">模块名</td>
		<td class="tableHeader">层数</td>
		<td class="tableHeader">权限标识</td>
		<td class="tableHeader">链接</td>
		<td class="tableHeader">类型</td>
		<td class="tableHeader">从属</td>
		<td class="tableHeader">状态</td>
	</tr>
	</thead>
	<tbody class="tableBody" >
	${links }
	<c:forEach items="${results}" var="o" varStatus="status">
	<tr class="odd" onmouseover="this.className='highlight'" onmouseout="this.className='odd'" >
		<td><input type="checkbox" name="deptId" value="${o.deptId}"/></td>
		<td>${status.index+1}</td>
		<td><a href="moduleAction_toview?deptId=${o.deptId}">${o.name}</a></td>
		<td>${o.layerNum}</td>
		<td>${o.cpermission}</td>
		<td>${o.curl}</td>
		<td>${o.ctype}</td>
		<td>${o.belong}</td>
		<td>${o.state}</td>
	</tr>
	</c:forEach>
	
	</tbody>
</table>
</div>
 
</div>
 
 
</form>
</body>
</html>

