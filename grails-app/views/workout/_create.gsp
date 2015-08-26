<%@ page import="managedscaffolds.Workout" %>



<div class="fieldcontain ${hasErrors(bean: workoutInstance, field: 'name', 'error')} required">
    <label for="name">
        <g:message code="workout.name.label" default="Name" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="name" required="" value="${workoutInstance?.name}"/>

</div>