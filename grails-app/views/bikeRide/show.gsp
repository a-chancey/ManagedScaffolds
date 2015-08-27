
<%@ page import="managedscaffolds.BikeRide" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'bikeRide.label', default: 'BikeRide')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-bikeRide" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-bikeRide" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list bikeRide">
			
				<g:if test="${bikeRideInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="bikeRide.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${bikeRideInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bikeRideInstance?.distanceInMiles}">
				<li class="fieldcontain">
					<span id="distanceInMiles-label" class="property-label"><g:message code="bikeRide.distanceInMiles.label" default="Distance In Miles" /></span>
					
						<span class="property-value" aria-labelledby="distanceInMiles-label"><g:fieldValue bean="${bikeRideInstance}" field="distanceInMiles"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bikeRideInstance?.workout}">
				<li class="fieldcontain">
					<span id="workout-label" class="property-label"><g:message code="bikeRide.workout.label" default="Workout" /></span>
					
						<span class="property-value" aria-labelledby="workout-label"><g:link controller="workout" action="show" id="${bikeRideInstance?.workout?.id}">${bikeRideInstance?.workout?.getName()?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:bikeRideInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${bikeRideInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
