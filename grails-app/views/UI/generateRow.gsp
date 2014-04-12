<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->
<!Doctype html>

<html>
  <head>
    <g:javascript library="prototype"/>
    <g:javascript src="generate.js"/>
    <title>Generate Rows</title>
  </head>
  <body>
    <h1>Map with Row addition</h1>
    <h3>Add Row</h3>
  <g:form action="ajaxAdd">
    <fieldset class="form">
      <div class="fieldcontain required">
        <label for="id">Section</label>
        <g:select id="sec" name="id" from="${org.bef.Section.list()}" optionKey="id" required="" value="" class="many-to-one"/>
      </div>
      <div class="fieldcontain required">
        <label for="row">Row</label>
        <g:field id="row" name="row" type="number" min="3" value="3"/>
      </div>
      <g:submitToRemote value="Generate"
                        url="[controller: 'UI', action: 'addRowAjax'] "
                        update="map"
                        onSuccess="nextRow(e)"
                        onLoading="showSpinner(true)"
                        onComplete="showSpinner(false)"/>
      <img id='spinner' style='display:none' 
           src="<g:createLinkTo dir='/images' file='spinner.gif'/>"/>
    </fieldset>
  </g:form>
  <div id="map"><map:table from="${org.bef.Filler.getAll()}" offX="${0}" offY="${0}"/></div>
  </body>
</html>
