
<%@ page import="managedscaffolds.Jog" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'jog.label', default: 'Jog')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-jog" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-jog" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'jog.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="distanceInMiles" title="${message(code: 'jog.distanceInMiles.label', default: 'Distance In Miles')}" />
					
						<g:sortableColumn property="jogDate" title="${message(code: 'jog.jogDate.label', default: 'Jog Date')}" />
					
						<th><g:message code="jog.workout.label" default="Workout" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${jogInstanceList}" status="i" var="jogInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${jogInstance.id}">${fieldValue(bean: jogInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: jogInstance, field: "distanceInMiles")}</td>
					
						<td><g:formatDate date="${jogInstance.jogDate}" /></td>
					
						<td>${fieldValue(bean: jogInstance, field: "workout.name")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${jogInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
