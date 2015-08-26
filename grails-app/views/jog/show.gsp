
<%@ page import="managedscaffolds.Jog" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'jog.label', default: 'Jog')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-jog" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-jog" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list jog">
			
				<g:if test="${jogInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="jog.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${jogInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jogInstance?.distanceInMiles}">
				<li class="fieldcontain">
					<span id="distanceInMiles-label" class="property-label"><g:message code="jog.distanceInMiles.label" default="Distance In Miles" /></span>
					
						<span class="property-value" aria-labelledby="distanceInMiles-label"><g:fieldValue bean="${jogInstance}" field="distanceInMiles"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jogInstance?.jogDate}">
				<li class="fieldcontain">
					<span id="jogDate-label" class="property-label"><g:message code="jog.jogDate.label" default="Jog Date" /></span>
					
						<span class="property-value" aria-labelledby="jogDate-label"><g:formatDate date="${jogInstance?.jogDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${jogInstance?.workout}">
				<li class="fieldcontain">
					<span id="workout-label" class="property-label"><g:message code="jog.workout.label" default="Workout" /></span>
					
						<span class="property-value" aria-labelledby="workout-label"><g:link controller="workout" action="show" id="${jogInstance?.workout?.id}">${jogInstance?.workout?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:jogInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${jogInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
