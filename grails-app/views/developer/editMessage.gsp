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
      <div class="fieldcontain required">
        <label for="id">Filler</label>
        <g:select id="filler" name="id" from="${org.bef.Filler.list()}" optionKey="id" required="" value="" class="many-to-one"/>
      </div>
      <div class="fieldcontain required">
        <label for="row1">Row 1</label>
        <g:textField name="row1" maxLength="14"/>
      </div>
      <div class="fieldcontain required">
        <label for="row2">Row 2</label>
        <g:textField name="row2" maxLength="14"/>
      </div>
      <g:submitToRemote value="Update"
                        url="[controller: 'Developer', action: 'editMessageAjax']"
                        update="map"
                        onLoading="showSpinner(true)"
                        onComplete="showSpinner(false)"/>
      <img id="spinner" style="display:none"
           src="<g:createLinkTo dir='/images' file='spinner.gif'/>"/>
    </fieldset>
    </g:form>
    <div id="map"><map:table from="${org.bef.Filler.getAll()}" offX="${0}" offY="${0}"/></div>
  </body>
</html>
