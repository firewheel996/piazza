<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->



<div class="fieldcontain required">
  <label for="id">Filler</label>
  <g:select id="filler" name="id" from="${org.bef.Filler.list()}" optionKey="id" optionValue="id" required="" value="${fillerInstance?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: fillerInstance, field: 'firstRow', 'error')} ">
	<label for="row1">
		<g:message code="filler.firstRow.label" default="First Row" />
		
	</label>
	<g:textField name="row1" maxlength="14" value="${fillerInstance?.firstRow}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: fillerInstance, field: 'secondRow', 'error')} ">
	<label for="row2">
		<g:message code="filler.secondRow.label" default="Second Row" />
		
	</label>
	<g:textField name="row2" maxlength="14" value="${fillerInstance?.secondRow}"/>
</div>
