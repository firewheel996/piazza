
<%@ page import="org.bef.Filler" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'filler.label', default: 'Filler')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-filler" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-filler" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list filler">
			
				<g:if test="${fillerInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="filler.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${fillerInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fillerInstance?.donator}">
				<li class="fieldcontain">
					<span id="donator-label" class="property-label"><g:message code="filler.donator.label" default="Donator" /></span>
					
						<span class="property-value" aria-labelledby="donator-label"><g:fieldValue bean="${fillerInstance}" field="donator"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fillerInstance?.x}">
				<li class="fieldcontain">
					<span id="x-label" class="property-label"><g:message code="filler.x.label" default="X" /></span>
					
						<span class="property-value" aria-labelledby="x-label"><g:fieldValue bean="${fillerInstance}" field="x"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fillerInstance?.y}">
				<li class="fieldcontain">
					<span id="y-label" class="property-label"><g:message code="filler.y.label" default="Y" /></span>
					
						<span class="property-value" aria-labelledby="y-label"><g:fieldValue bean="${fillerInstance}" field="y"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fillerInstance?.length}">
				<li class="fieldcontain">
					<span id="length-label" class="property-label"><g:message code="filler.length.label" default="Length" /></span>
					
						<span class="property-value" aria-labelledby="length-label"><g:fieldValue bean="${fillerInstance}" field="length"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fillerInstance?.height}">
				<li class="fieldcontain">
					<span id="height-label" class="property-label"><g:message code="filler.height.label" default="Height" /></span>
					
						<span class="property-value" aria-labelledby="height-label"><g:fieldValue bean="${fillerInstance}" field="height"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fillerInstance?.firstRow}">
				<li class="fieldcontain">
					<span id="firstRow-label" class="property-label"><g:message code="filler.firstRow.label" default="First Row" /></span>
					
						<span class="property-value" aria-labelledby="firstRow-label"><g:fieldValue bean="${fillerInstance}" field="firstRow"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fillerInstance?.secondRow}">
				<li class="fieldcontain">
					<span id="secondRow-label" class="property-label"><g:message code="filler.secondRow.label" default="Second Row" /></span>
					
						<span class="property-value" aria-labelledby="secondRow-label"><g:fieldValue bean="${fillerInstance}" field="secondRow"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fillerInstance?.thirdRow}">
				<li class="fieldcontain">
					<span id="thirdRow-label" class="property-label"><g:message code="filler.thirdRow.label" default="Third Row" /></span>
					
						<span class="property-value" aria-labelledby="thirdRow-label"><g:fieldValue bean="${fillerInstance}" field="thirdRow"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fillerInstance?.fourthRow}">
				<li class="fieldcontain">
					<span id="fourthRow-label" class="property-label"><g:message code="filler.fourthRow.label" default="Fourth Row" /></span>
					
						<span class="property-value" aria-labelledby="fourthRow-label"><g:fieldValue bean="${fillerInstance}" field="fourthRow"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fillerInstance?.photo}">
				<li class="fieldcontain">
					<span id="photo-label" class="property-label"><g:message code="filler.photo.label" default="Photo" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${fillerInstance?.section}">
				<li class="fieldcontain">
					<span id="section-label" class="property-label"><g:message code="filler.section.label" default="Section" /></span>
					
						<span class="property-value" aria-labelledby="section-label"><g:link controller="section" action="show" id="${fillerInstance?.section?.id}">${fillerInstance?.section?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${fillerInstance?.specialPlacement}">
				<li class="fieldcontain">
					<span id="specialPlacement-label" class="property-label"><g:message code="filler.specialPlacement.label" default="Special Placement" /></span>
					
						<span class="property-value" aria-labelledby="specialPlacement-label"><g:formatBoolean boolean="${fillerInstance?.specialPlacement}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${fillerInstance?.id}" />
					<g:link class="edit" action="edit" id="${fillerInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
