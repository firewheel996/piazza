<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page import="org.bef.Filler" %>

<html>
  <head>
    <meta name="layout" content="main">
    <title>Display Section</title>
  </head>
  <body>
    <h1>Section ${section.id}</h1>
    <map:table from="${section?.fillers}" offX="${section?.offsetX}" offY="${section?.offsetY}"/>
  </body>
</html>
