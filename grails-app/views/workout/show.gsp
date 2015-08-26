<%@ page import="managedscaffolds.Workout" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'workout.label', default: 'Workout')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-workout" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                              default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <g:render template="menu"/>
    </ul>
</div>

<div id="show-workout" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list workout">

        <g:if test="${workoutInstance?.name}">
            <li class="fieldcontain">
                <span id="name-label" class="property-label"><g:message code="workout.name.label"
                                                                        default="Name"/></span>

                <span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${workoutInstance}"
                                                                                        field="name"/></span>

            </li>
        </g:if>

        <g:if test="${workoutInstance?.bikeRides}">
            <li class="fieldcontain">
                <span id="bikeRides-label" class="property-label"><g:message code="workout.bikeRides.label"
                                                                             default="Bike Rides"/></span>

                <g:each in="${workoutInstance.bikeRides}" var="b">
                    <span class="property-value" aria-labelledby="bikeRides-label"><g:link controller="bikeRide"
                                                                                           action="show"
                                                                                           id="${b.id}">${b?.name.encodeAsHTML()}</g:link></span>
                </g:each>

            </li>
        </g:if>

        <g:if test="${workoutInstance?.jogs}">
            <li class="fieldcontain">
                <span id="jogs-label" class="property-label"><g:message code="workout.jogs.label"
                                                                        default="Jogs"/></span>

                <g:each in="${workoutInstance.jogs}" var="j">
                    <span class="property-value" aria-labelledby="jogs-label"><g:link controller="jog" action="show"
                                                                                      id="${j.id}">${j?.name.encodeAsHTML()}</g:link></span>
                </g:each>

            </li>
        </g:if>

        <g:if test="${workoutInstance?.sitUps}">
            <li class="fieldcontain">
                <span id="sitUps-label" class="property-label"><g:message code="workout.sitUps.label"
                                                                          default="Sit Ups"/></span>

                <g:each in="${workoutInstance.sitUps}" var="s">
                    <span class="property-value" aria-labelledby="sitUps-label"><g:link controller="sitUp" action="show"
                                                                                        id="${s.id}">${s?.name.encodeAsHTML()}</g:link></span>
                </g:each>

            </li>
        </g:if>

    </ol>
    <g:form url="[resource: workoutInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="edit" resource="${workoutInstance}"><g:message code="default.button.edit.label"
                                                                                        default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
