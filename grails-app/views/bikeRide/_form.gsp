<%@ page import="managedscaffolds.BikeRide" %>



<div class="fieldcontain ${hasErrors(bean: bikeRideInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="bikeRide.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${bikeRideInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bikeRideInstance, field: 'distanceInMiles', 'error')} required">
	<label for="distanceInMiles">
		<g:message code="bikeRide.distanceInMiles.label" default="Distance In Miles" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="distanceInMiles" value="${fieldValue(bean: bikeRideInstance, field: 'distanceInMiles')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: bikeRideInstance, field: 'workout', 'error')} required">
	<label for="workout">
		<g:message code="bikeRide.workout.label" default="Workout" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="workout" name="workout.id" from="${managedscaffolds.Workout.list()}" optionKey="id" required="" value="${bikeRideInstance?.workout?.id}" class="many-to-one"/>

</div>

