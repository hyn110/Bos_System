<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../base.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title></title>
</head>

<body>
<form name="icform" method="post">
      <input type="hidden" name="deptId" value="${deptId}"/>
      
<div deptId="menubar">
<div deptId="middleMenubar">
<div deptId="innerMenubar">
  <div deptId="navMenubar">
<ul>
<li deptId="save"><a href="#" onclick="formSubmit('deptAction_update','_self');this.blur();">保存</a></li>
<li deptId="back"><a href="#" onclick="history.go(-1);">返回</a></li>
</ul>
  </div>
</div>
</div>
</div>
   
  <div class="textbox-title">
	<img src="${ctx }/skin/default/images/icon/currency_yen.png"/>
   修改部门
  </div> 
  

 
    <div>
		<table class="commonTable" cellspacing="1">
	        <tr>
	            <td class="columnTitle">上级部门：</td>
	            <td class="tableContent">
	            	<s:select name="parent.deptId" list="deptList"
	            		listKey="deptId" listValue="deptName"
	            		headerKey="" headerValue="--请选择--"
	            	></s:select>
	            </td>
	        </tr>		
	        <tr>
	            <td class="columnTitle">部门名称：</td>
	            <td class="tableContent"><input type="text" name="deptName" value="${deptName }"/>
	            </td>
	        </tr>		
		</table>
	</div>
 </form>
</body>
</html>