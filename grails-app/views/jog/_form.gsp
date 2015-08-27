<%@ page import="managedscaffolds.Jog" %>



<div class="fieldcontain ${hasErrors(bean: jogInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="jog.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${jogInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: jogInstance, field: 'distanceInMiles', 'error')} required">
	<label for="distanceInMiles">
		<g:message code="jog.distanceInMiles.label" default="Distance In Miles" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="distanceInMiles" value="${fieldValue(bean: jogInstance, field: 'distanceInMiles')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: jogInstance, field: 'jogDate', 'error')} required">
	<label for="jogDate">
		<g:message code="jog.jogDate.label" default="Jog Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="jogDate" precision="day"  value="${jogInstance?.jogDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: jogInstance, field: 'workout', 'error')} required">
	<label for="workout">
		<g:message code="jog.workout.label" default="Workout" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="workout" name="workout.id" from="${managedscaffolds.Workout.list()}" optionKey="id" optionValue="name" required="" value="${jogInstance?.workout?.id}" class="many-to-one"/>

</div>

