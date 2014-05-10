
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
			
				<g:if test="${donationInstance?.firstRow}">
				<li class="fieldcontain">
					<span id="firstRow-label" class="property-label"><g:message code="donation.firstRow.label" default="First Row" /></span>
					
						<span class="property-value" aria-labelledby="firstRow-label"><g:fieldValue bean="${donationInstance}" field="firstRow"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${donationInstance?.fourthRow}">
				<li class="fieldcontain">
					<span id="fourthRow-label" class="property-label"><g:message code="donation.fourthRow.label" default="Fourth Row" /></span>
					
						<span class="property-value" aria-labelledby="fourthRow-label"><g:fieldValue bean="${donationInstance}" field="fourthRow"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${donationInstance?.secondRow}">
				<li class="fieldcontain">
					<span id="secondRow-label" class="property-label"><g:message code="donation.secondRow.label" default="Second Row" /></span>
					
						<span class="property-value" aria-labelledby="secondRow-label"><g:fieldValue bean="${donationInstance}" field="secondRow"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${donationInstance?.thirdRow}">
				<li class="fieldcontain">
					<span id="thirdRow-label" class="property-label"><g:message code="donation.thirdRow.label" default="Third Row" /></span>
					
						<span class="property-value" aria-labelledby="thirdRow-label"><g:fieldValue bean="${donationInstance}" field="thirdRow"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${donationInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="donation.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${donationInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${donationInstance?.streetAddress}">
				<li class="fieldcontain">
					<span id="streetAddress-label" class="property-label"><g:message code="donation.streetAddress.label" default="Street Address" /></span>
					
						<span class="property-value" aria-labelledby="streetAddress-label"><g:fieldValue bean="${donationInstance}" field="streetAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${donationInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="donation.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${donationInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${donationInstance?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="donation.state.label" default="State" /></span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${donationInstance}" field="state"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${donationInstance?.zip}">
				<li class="fieldcontain">
					<span id="zip-label" class="property-label"><g:message code="donation.zip.label" default="Zip" /></span>
					
						<span class="property-value" aria-labelledby="zip-label"><g:fieldValue bean="${donationInstance}" field="zip"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${donationInstance?.phone}">
				<li class="fieldcontain">
					<span id="phone-label" class="property-label"><g:message code="donation.phone.label" default="Phone" /></span>
					
						<span class="property-value" aria-labelledby="phone-label"><g:fieldValue bean="${donationInstance}" field="phone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${donationInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="donation.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${donationInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${donationInstance?.specialInstructions}">
				<li class="fieldcontain">
					<span id="specialInstructions-label" class="property-label"><g:message code="donation.specialInstructions.label" default="Special Instructions" /></span>
					
						<span class="property-value" aria-labelledby="specialInstructions-label"><g:fieldValue bean="${donationInstance}" field="specialInstructions"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${donationInstance?.paymentType}">
				<li class="fieldcontain">
					<span id="paymentType-label" class="property-label"><g:message code="donation.paymentType.label" default="Payment Type" /></span>
					
						<span class="property-value" aria-labelledby="paymentType-label"><g:fieldValue bean="${donationInstance}" field="paymentType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${donationInstance?.cardNumber}">
				<li class="fieldcontain">
					<span id="cardNumber-label" class="property-label"><g:message code="donation.cardNumber.label" default="Card Number" /></span>
					
						<span class="property-value" aria-labelledby="cardNumber-label"><g:fieldValue bean="${donationInstance}" field="cardNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${donationInstance?.securityCode}">
				<li class="fieldcontain">
					<span id="securityCode-label" class="property-label"><g:message code="donation.securityCode.label" default="Security Code" /></span>
					
						<span class="property-value" aria-labelledby="securityCode-label"><g:fieldValue bean="${donationInstance}" field="securityCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${donationInstance?.expirationDate}">
				<li class="fieldcontain">
					<span id="expirationDate-label" class="property-label"><g:message code="donation.expirationDate.label" default="Expiration Date" /></span>
					
						<span class="property-value" aria-labelledby="expirationDate-label"><g:formatDate date="${donationInstance?.expirationDate}" /></span>
					
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
			
				<g:if test="${donationInstance?.fillDate}">
				<li class="fieldcontain">
					<span id="fillDate-label" class="property-label"><g:message code="donation.fillDate.label" default="Fill Date" /></span>
					
						<span class="property-value" aria-labelledby="fillDate-label"><g:formatDate date="${donationInstance?.fillDate}" /></span>
					
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
