<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page import="org.bef.Filler" %>

<html>
  <head>
    <title>Display</title>
  </head>
  <body>
    <h1>Map</h1>
    <map:redirectingTable from="${fillers}" offX="${offx}" offY="${offy}"/>
  </body>
</html>
