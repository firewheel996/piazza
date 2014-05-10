<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

-->
<!Doctype html>

<html>
  <head>
    <g:javascript library="prototype"/>
    <g:javascript src="generate.js"/>
    <title>Edit Message</title>
  </head>
  <body>
    <h1>Edit Message</h1>
    <g:form action="ajaxAdd">
    <fieldset class="form">
      <div id="form">
      <g:render template="editform" model="${fillerInstance}"/></div>
      <g:submitToRemote value="Update"
                        url="[controller: 'Developer', action: 'editMessageAjax']"
                        update="map"
                        onLoading="showSpinner(true)"
                        onComplete="showSpinner(false)"/>
      <img id="spinner" style="display:none"
           src="<g:createLinkTo dir='/images' file='spinner.gif'/>"/>
    </fieldset>
    </g:form>
    <div id="map"><map:submitingTable from="${org.bef.Filler.getAll()}" offX="${0}" offY="${0}"/></div>
  </body>
</html>
