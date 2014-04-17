<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->
<!Doctype html>

<html>
  <head>
    <title>Display for Developers</title>
    <g:javascript library="prototype"/>
    <g:javascript src="generate.js"/>
  </head>
  <body>
    <h1>Map with Developer adding</h1>
    <h3>Add Brick</h3>
  <g:form action="ajaxAdd">
    <fieldset class="form">
      <div class="fieldcontain required">
        <label for="id">Section</label>
        <g:select id="sec" name="id" from="${org.bef.Section.list()}" optionKey="id" required="" value="" class="many-to-one"/>
      </div>
      <div class="fieldcontain required">
    <label for="x">X:</label>
    <g:field id="x" name="x" type="number" min="0" value="0"/>
      </div>
      <div class="fieldcontain required">
        <label for="y">Y:</label>
        <g:field id="y" name="y" type="number" min="0" value="0"/>
      </div>
      <div class="fieldcontain required">
        <label for="orientation">Orientation</label>
        <g:radioGroup id="orientation" name="orientation" labels="['Wide','Tall']" values="[0,1]" value="0">
          <g:message code="${it.label}"/>: ${it.radio} 
        </g:radioGroup>
      </div>
    <g:submitToRemote value="Add"
                      url="[controller: 'Developer', action: 'addBrickAjax']"
                      update="map"
                      onSuccess="nextBrick(e)"
                      onLoading="showSpinner(true)"
                      onComplete="showSpinner(false)"/>
    <img id="spinner" style="display: none"
         src="<g:createLinkTo dir='/images' file='spinner.gif'/>"/>
    </fieldset>
  </g:form>
  <div id="map"><map:table from="${org.bef.Filler.getAll()}" offX="${0}" offY="${0}"/></div>
  </body>
</html>
