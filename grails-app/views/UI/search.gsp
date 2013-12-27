<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page import="org.bef.Filler" %>
<%
  def fields = grailsApplication.getDomainClass('org.bef.Filler').persistentProperties.collect { it.name }
%>
<!DOCTYPE HTML>
<html>
  <head>
    <meta name="layout" content="main">
    <title>Search</title>
  </head>
  <body>
    <div id="search-filler" role="main">
      <h1>Search</h1>
      <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
      </g:if>
      <g:form action="result">
        <div>${flash.message}</div>
        <fieldset class="form">
          <div class ="fieldcontain required">
            <label for="field">
              <g:message default="Field"/>
            </label>
            <g:select name="field" from="${fields}"/>
          </div>
          <div class="fieldcontain required">
            <label for="val">
              <g:message default="Contains"/>
            </label>
            <g:textField name="val"/>
          </div>
        
          <g:submitButton name="search" value="Search"/>
      </g:form>
    </div>

  </body>
</html>
