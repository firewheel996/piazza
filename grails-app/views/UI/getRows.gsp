<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta thtp-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Get Rows</title>
  </head>
  <body>
    <h1>Get Rows</h1>
  <g:form action="displayRows">
    <fieldset class="form">
      <div class="fieldcontain required">
        <label for="low">Lower Limit</label>
        <g:field name="low" type="number" min="-1" value="-1"/>
      </div>
      <div class="fieldcontain required">
        <label for="high">Upper Limit</label>
        <g:field name="high" type="number" min="1" value="1"/>
      </div>
      <div>
        <g:submitButton name="displayRows" class="displayRows" value="Display"/>
      </div>
    </fieldset>
    </g:form>
  </body>
</html>
