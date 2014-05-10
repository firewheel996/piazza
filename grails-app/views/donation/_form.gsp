<%@ page import="org.bef.Donation" %>



<div class="fieldcontain ${hasErrors(bean: donationInstance, field: 'type', 'error')} ">
	<label for="type">
		<g:message code="donation.type.label" default="Type" />
		
	</label>
	<g:select name="type" from="${donationInstance.constraints.type.inList}" value="${donationInstance?.type}" valueMessagePrefix="donation.type" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: donationInstance, field: 'firstRow', 'error')} ">
	<label for="firstRow">
		<g:message code="donation.firstRow.label" default="First Row" />
		
	</label>
	<g:textField name="firstRow" value="${donationInstance?.firstRow}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: donationInstance, field: 'secondRow', 'error')} ">
	<label for="secondRow">
		<g:message code="donation.secondRow.label" default="Second Row" />
		
	</label>
	<g:textField name="secondRow" value="${donationInstance?.secondRow}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: donationInstance, field: 'thirdRow', 'error')} ">
	<label for="thirdRow">
		<g:message code="donation.thirdRow.label" default="Third Row" />
		
	</label>
	<g:textField name="thirdRow" value="${donationInstance?.thirdRow}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: donationInstance, field: 'fourthRow', 'error')} ">
	<label for="fourthRow">
		<g:message code="donation.fourthRow.label" default="Fourth Row" />
		
	</label>
	<g:textField name="fourthRow" value="${donationInstance?.fourthRow}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: donationInstance, field: 'specialInstructions', 'error')} ">
	<label for="specialInstructions">
		<g:message code="donation.specialInstructions.label" default="Special Instructions" />
		
	</label>
	<g:textArea name="specialInstructions" cols="40" rows="5" maxlength="1000" value="${donationInstance?.specialInstructions}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: donationInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="donation.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${donationInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: donationInstance, field: 'streetAddress', 'error')} required">
	<label for="streetAddress">
		<g:message code="donation.streetAddress.label" default="Street Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="streetAddress" required="" value="${donationInstance?.streetAddress}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: donationInstance, field: 'city', 'error')} required">
	<label for="city">
		<g:message code="donation.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="city" required="" value="${donationInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: donationInstance, field: 'state', 'error')} required">
	<label for="state">
		<g:message code="donation.state.label" default="State" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="state" required="" value="${donationInstance?.state}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: donationInstance, field: 'zip', 'error')} required">
	<label for="zip">
		<g:message code="donation.zip.label" default="Zip" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="zip" maxlength="9" required="" value="${donationInstance?.zip}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: donationInstance, field: 'phone', 'error')} ">
	<label for="phone">
		<g:message code="donation.phone.label" default="Phone" />
		
	</label>
	<g:textField name="phone" maxlength="10" value="${donationInstance?.phone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: donationInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="donation.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${donationInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: donationInstance, field: 'paymentType', 'error')} ">
	<label for="paymentType">
		<g:message code="donation.paymentType.label" default="Payment Type" />
		
	</label>
	<g:select name="paymentType" from="${donationInstance.constraints.paymentType.inList}" value="${donationInstance?.paymentType}" valueMessagePrefix="donation.paymentType" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: donationInstance, field: 'cardNumber', 'error')} ">
	<label for="cardNumber">
		<g:message code="donation.cardNumber.label" default="Card Number" />
		
	</label>
	<g:textField name="cardNumber" value="${donationInstance?.cardNumber}"/>
        
        <label for="securityCode">
		<g:message code="donation.securityCode.label" default="Security Code" />
		
	</label>
	<g:textField name="securityCode" value="${donationInstance?.securityCode}"/>
</div>
<!--
<div class="fieldcontain ${hasErrors(bean: donationInstance, field: 'securityCode', 'error')} ">
	<label for="securityCode">
		<g:message code="donation.securityCode.label" default="Security Code" />
		
	</label>
	<g:textField name="securityCode" value="${donationInstance?.securityCode}"/>
</div> -->

<div class="fieldcontain ${hasErrors(bean: donationInstance, field: 'expirationDate', 'error')} ">
	<label for="expirationDate">
		<g:message code="donation.expirationDate.label" default="Expiration Date" />
		
	</label>
	<g:datePicker name="expirationDate" precision="month"  value="${donationInstance?.expirationDate}" default="none" noSelection="['': '']" />
</div>

