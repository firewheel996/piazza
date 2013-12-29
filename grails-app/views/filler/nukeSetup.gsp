<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<html>
  <head>
    <meta name="layout" content="main">
    <title>Mass Delete</title>
  </head>
  <body>
    <h1>What's the lowest ID that you want deleted?</h1>
  <g:form action="massDelete">
    <fieldset class="form">
      <div class="fieldcontain required">
        <label for="low">
          Lowest Filler ID
        </label>
        <g:select id="low" name="low" from="${org.bef.Filler.list()}" optionKey="id"/>
      </div>
      <g:submitButton name="massDelete" class="massDelete" value="Nuke"/>
    </fieldset>
  </g:form>
  </body>
</html>
