<%@ page import="org.bef.Donation" %>



<div class="fieldcontain ${hasErrors(bean: donationInstance, field: 'type', 'error')} ">
	<label for="type">
		<g:message code="donation.type.label" default="Type" />
		
	</label>
	<g:select name="type" from="${donationInstance.constraints.type.inList}" value="${donationInstance?.type}" valueMessagePrefix="donation.type" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: donationInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="donation.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${donationInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: donationInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="donation.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${donationInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: donationInstance, field: 'phone', 'error')} ">
	<label for="phone">
		<g:message code="donation.phone.label" default="Phone" />
		
	</label>
	<g:textField name="phone" maxlength="10" value="${donationInstance?.phone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: donationInstance, field: 'specialInstructions', 'error')} ">
	<label for="specialInstructions">
		<g:message code="donation.specialInstructions.label" default="Special Instructions" />
		
	</label>
	<g:textArea name="specialInstructions" cols="40" rows="5" maxlength="1000" value="${donationInstance?.specialInstructions}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: donationInstance, field: 'paymentType', 'error')} ">
	<label for="paymentType">
		<g:message code="donation.paymentType.label" default="Payment Type" />
		
	</label>
	<g:textField name="paymentType" value="${donationInstance?.paymentType}"/>
</div>

