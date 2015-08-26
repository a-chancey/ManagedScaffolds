
<%@ page import="managedscaffolds.SitUp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'sitUp.label', default: 'SitUp')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-sitUp" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-sitUp" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'sitUp.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="count" title="${message(code: 'sitUp.count.label', default: 'Count')}" />
					
						<g:sortableColumn property="sets" title="${message(code: 'sitUp.sets.label', default: 'Sets')}" />
					
						<th><g:message code="sitUp.workout.label" default="Workout" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${sitUpInstanceList}" status="i" var="sitUpInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${sitUpInstance.id}">${fieldValue(bean: sitUpInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: sitUpInstance, field: "count")}</td>
					
						<td>${fieldValue(bean: sitUpInstance, field: "sets")}</td>
					
						<td>${fieldValue(bean: sitUpInstance, field: "workout")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${sitUpInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
