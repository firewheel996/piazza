<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="layout" content="main">
    <title>Generate A Row</title>
  </head>
  <body>
    <h1>Generate A Row</h1>
  <g:form action="generate">
    <fieldset class="form">
      <div class="fieldcontain required">
        <label for="Start">
          <g:message code="filler.y.label" default="Starting Row" />
          <span class="required-indicator">*</span>
        </label>
        <g:field name="start" type="number" min="0" value="2" required=""/>
      </div>
      <div class="fieldcontain required">
        <label for="y">
          <g:message default="Number of Rows" />
          <span class="required-indicator">*</span>
        </label>
        <g:field name="numRows" type="number" min="1" value="1" required=""/>
      </div>
      <div class="fieldcontain required">
        <label for="section">
          <g:message code="filler.section.label" default="Section" />
          <span class="required-indicator">*</span>
        </label>
        <g:select id="section" name="section" from="${org.bef.Section.list()}" optionKey="id" required="" value="${Section}" class="many-to-one"/>
      </div>
    </fieldset>
    <fieldset class="buttons">
      <g:submitButton name="generate" class="generate" value="Generate"/>
    </fieldset>
  </g:form>
</body>
</html>
