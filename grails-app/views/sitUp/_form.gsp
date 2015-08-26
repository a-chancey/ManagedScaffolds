<%@ page import="managedscaffolds.SitUp" %>



<div class="fieldcontain ${hasErrors(bean: sitUpInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="sitUp.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${sitUpInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: sitUpInstance, field: 'count', 'error')} required">
	<label for="count">
		<g:message code="sitUp.count.label" default="Count" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="count" type="number" value="${sitUpInstance.count}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: sitUpInstance, field: 'sets', 'error')} required">
	<label for="sets">
		<g:message code="sitUp.sets.label" default="Sets" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="sets" type="number" value="${sitUpInstance.sets}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: sitUpInstance, field: 'workout', 'error')} required">
	<label for="workout">
		<g:message code="sitUp.workout.label" default="Workout" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="workout" name="workout.id" from="${managedscaffolds.Workout.list()}" optionKey="id" required="" value="${sitUpInstance?.workout?.id}" class="many-to-one"/>

</div>

