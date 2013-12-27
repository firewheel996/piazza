
<%@ page import="org.bef.Donation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'donation.label', default: 'Donation')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-donation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-donation" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list donation">
			
				<g:if test="${donationInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="donation.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${donationInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${donationInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="donation.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${donationInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${donationInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="donation.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${donationInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${donationInstance?.phone}">
				<li class="fieldcontain">
					<span id="phone-label" class="property-label"><g:message code="donation.phone.label" default="Phone" /></span>
					
						<span class="property-value" aria-labelledby="phone-label"><g:fieldValue bean="${donationInstance}" field="phone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${donationInstance?.specialInstructions}">
				<li class="fieldcontain">
					<span id="specialInstructions-label" class="property-label"><g:message code="donation.specialInstructions.label" default="Special Instructions" /></span>
					
						<span class="property-value" aria-labelledby="specialInstructions-label"><g:fieldValue bean="${donationInstance}" field="specialInstructions"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${donationInstance?.payed}">
				<li class="fieldcontain">
					<span id="payed-label" class="property-label"><g:message code="donation.payed.label" default="Payed" /></span>
					
						<span class="property-value" aria-labelledby="payed-label"><g:formatBoolean boolean="${donationInstance?.payed}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${donationInstance?.orderDate}">
				<li class="fieldcontain">
					<span id="orderDate-label" class="property-label"><g:message code="donation.orderDate.label" default="Order Date" /></span>
					
						<span class="property-value" aria-labelledby="orderDate-label"><g:formatDate date="${donationInstance?.orderDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${donationInstance?.filler}">
				<li class="fieldcontain">
					<span id="filler-label" class="property-label"><g:message code="donation.filler.label" default="Filler" /></span>
					
						<span class="property-value" aria-labelledby="filler-label"><g:link controller="filler" action="show" id="${donationInstance?.filler?.id}">${donationInstance?.filler?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${donationInstance?.paymentType}">
				<li class="fieldcontain">
					<span id="paymentType-label" class="property-label"><g:message code="donation.paymentType.label" default="Payment Type" /></span>
					
						<span class="property-value" aria-labelledby="paymentType-label"><g:fieldValue bean="${donationInstance}" field="paymentType"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${donationInstance?.id}" />
					<g:link class="edit" action="edit" id="${donationInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
