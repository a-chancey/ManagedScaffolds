<%@ page import="managedscaffolds.Workout" %>



<div class="fieldcontain ${hasErrors(bean: workoutInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="workout.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${workoutInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: workoutInstance, field: 'bikeRides', 'error')} ">
	<label for="bikeRides">
		<g:message code="workout.bikeRides.label" default="Bike Rides" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${workoutInstance?.bikeRides?}" var="b">
    <li><g:link controller="bikeRide" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="bikeRide" action="create" params="['workout.id': workoutInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'bikeRide.label', default: 'BikeRide')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: workoutInstance, field: 'jogs', 'error')} ">
	<label for="jogs">
		<g:message code="workout.jogs.label" default="Jogs" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${workoutInstance?.jogs?}" var="j">
    <li><g:link controller="jog" action="show" id="${j.id}">${j?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="jog" action="create" params="['workout.id': workoutInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'jog.label', default: 'Jog')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: workoutInstance, field: 'sitUps', 'error')} ">
	<label for="sitUps">
		<g:message code="workout.sitUps.label" default="Sit Ups" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${workoutInstance?.sitUps?}" var="s">
    <li><g:link controller="sitUp" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="sitUp" action="create" params="['workout.id': workoutInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'sitUp.label', default: 'SitUp')])}</g:link>
</li>
</ul>


</div>

