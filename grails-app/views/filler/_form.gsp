<%@ page import="org.bef.Filler" %>



<div class="fieldcontain ${hasErrors(bean: fillerInstance, field: 'type', 'error')} ">
	<label for="type">
		<g:message code="filler.type.label" default="Type" />
		
	</label>
	<g:select name="type" from="${fillerInstance.constraints.type.inList}" value="${fillerInstance?.type}" valueMessagePrefix="filler.type" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: fillerInstance, field: 'donator', 'error')} ">
	<label for="donator">
		<g:message code="filler.donator.label" default="Donator" />
		
	</label>
	<g:textField name="donator" value="${fillerInstance?.donator}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: fillerInstance, field: 'x', 'error')} required">
	<label for="x">
		<g:message code="filler.x.label" default="X" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="x" type="number" min="0" value="${fillerInstance.x}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: fillerInstance, field: 'y', 'error')} required">
	<label for="y">
		<g:message code="filler.y.label" default="Y" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="y" type="number" min="0" value="${fillerInstance.y}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: fillerInstance, field: 'length', 'error')} required">
	<label for="length">
		<g:message code="filler.length.label" default="Length" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="length" from="${1..6}" class="range" required="" value="${fieldValue(bean: fillerInstance, field: 'length')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: fillerInstance, field: 'height', 'error')} required">
	<label for="height">
		<g:message code="filler.height.label" default="Height" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="height" from="${1..3}" class="range" required="" value="${fieldValue(bean: fillerInstance, field: 'height')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: fillerInstance, field: 'firstRow', 'error')} ">
	<label for="firstRow">
		<g:message code="filler.firstRow.label" default="First Row" />
		
	</label>
	<g:textField name="firstRow" maxlength="14" value="${fillerInstance?.firstRow}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: fillerInstance, field: 'secondRow', 'error')} ">
	<label for="secondRow">
		<g:message code="filler.secondRow.label" default="Second Row" />
		
	</label>
	<g:textField name="secondRow" maxlength="14" value="${fillerInstance?.secondRow}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: fillerInstance, field: 'thirdRow', 'error')} ">
	<label for="thirdRow">
		<g:message code="filler.thirdRow.label" default="Third Row" />
		
	</label>
	<g:textField name="thirdRow" maxlength="14" value="${fillerInstance?.thirdRow}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: fillerInstance, field: 'fourthRow', 'error')} ">
	<label for="fourthRow">
		<g:message code="filler.fourthRow.label" default="Fourth Row" />
		
	</label>
	<g:textField name="fourthRow" maxlength="14" value="${fillerInstance?.fourthRow}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: fillerInstance, field: 'photo', 'error')} ">
	<label for="photo">
		<g:message code="filler.photo.label" default="Photo" />
		
	</label>
	<input type="file" id="photo" name="photo" />
</div>

<div class="fieldcontain ${hasErrors(bean: fillerInstance, field: 'section', 'error')} required">
	<label for="section">
		<g:message code="filler.section.label" default="Section" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="section" name="section.id" from="${org.bef.Section.list()}" optionKey="id" required="" value="${fillerInstance?.section?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: fillerInstance, field: 'specialPlacement', 'error')} ">
	<label for="specialPlacement">
		<g:message code="filler.specialPlacement.label" default="Special Placement" />
		
	</label>
	<g:checkBox name="specialPlacement" value="${fillerInstance?.specialPlacement}" />
</div>

