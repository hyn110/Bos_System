<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../baselist.jsp"%>
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

</div>
</div>
</div>
   
<div class="textbox" deptId="centerTextbox">
  <div class="textbox-header">
  <div class="textbox-inner-header">
  <div class="textbox-title">
    任务列表
  </div> 
  </div>
  </div>
  
<div>


<div class="eXtremeTable" >
<table deptId="ec_table" class="tableRegion" width="98%" >
	<thead>
	<tr>
					<td>任务id</td>
					<td>任务名称</td>
					<td>任务标识</td>
					<td>所属流程实例id</td>
					<td>负责人</td>
					<td>采购单名称</td>
					<td>采购金额</td>
					<td>创建时间</td>
					<td>任务类型</td>
				</tr>
				<c:forEach items="${list }" var="order">
					<tr>
						<td class=category>${order.taskId}</td>
						<td class=category>${order.taskName }</td>
						<td class=category>${order.taskDefinitionKey }</td>
						<td class=category>${order.processInstanceId }</td>
						<td class=category>${order.assignee}</td>
						<td class=category>${order.name}</td>
						<td class=category>${order.price}</td>
						<td class=category><fmt:formatDate value="${order.createtime}"
								pattern="yyyy-MM-dd hh:mm:ss" /></td>
						<td class=category>
						  
						<c:if
								test="${order.taskDefinitionKey=='inputPurchase' }">
								<a href="${ctx}/flow/orderFlowAction_submitOrder.action?taskId=${order.taskId}">提交采购单</a>

							</c:if> <c:if test="${order.taskDefinitionKey=='firstAudit' }">
								<a
									href="${ctx}/flow/orderFlowAction_orderAudit.action?taskId=${order.taskId}&auditType=${order.taskDefinitionKey}&orderId=${order.deptId}">部门经理审核</a>

							</c:if> <c:if test="${order.taskDefinitionKey=='secondAudit' }">
								<a
									href="${ctx}/flow/orderFlowAction_orderAudit.action?taskId=${order.taskId}&auditType=${order.taskDefinitionKey}&orderId=${order.deptId}">总经理审核</a>

							</c:if> <c:if test="${order.taskDefinitionKey=='thirdAudit' }">
								<a
									href="${ctx}/flow/orderFlowAction_orderAudit.action?taskId=${order.taskId}&auditType=${order.taskDefinitionKey}&orderId=${order.deptId}">财务审核</a>

							</c:if>
						<%--  <c:if test="${order.taskDefinitionKey=='settlement' }">
								<a
									href="${ctx}/orderflow/settlement.action?taskId=${order.taskId}">财务结算</a>

							</c:if>
							 <c:if test="${order.taskDefinitionKey=='storage' }">
								<a
									href="${ctx}/orderflow/storage.action?taskId=${order.taskId}">入库</a>

							</c:if> --%>
						</td>
					</tr>
				</c:forEach>
			</tbody>
</table>
</div>
 
</div>
 
 
</form>
</body>
</html>

