
<%@ page import="org.bef.Filler" %>
<!Doctype html>
<html>
  <head>
  <g:set var="entityName" value="${message(code: 'filler.label', default: 'Filler')}" />
  <title>Result</title>
</head>
<body>
  <h1>Result</h1>
  <table>
    <thead>
      <tr>

    <g:sortableColumn property="donator" title="${message(code: 'filler.donator.label', default: 'Donator')}" />

    <g:sortableColumn property="firstRow" title="${message(code: 'filler.firstRow.label', default: 'First Row')}" />

    <g:sortableColumn property="rotated" title="${message(code: 'filler.rotated.label', default: 'Rotated')}" />

    <g:sortableColumn property="x" title="${message(code: 'filler.x.label', default: 'X')}" />

    <g:sortableColumn property="y" title="${message(code: 'filler.y.label', default: 'Y')}" />

    <g:sortableColumn property="photo" title="${message(code: 'filler.photo.label', default: 'Photo')}" />

  </tr>
</thead>
<tbody>
<g:each in="${results}" status="i" var="result">
  <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

    <td><g:link action="show" id="${result.id}">${fieldValue(bean: result, field: "donator")}</g:link></td>

  <td>${fieldValue(bean: result, field: "firstRow")}</td>

  <td><g:formatBoolean boolean="${result.filled}" /></td>

  <td>${fieldValue(bean: result, field: "x")}</td>

  <td>${fieldValue(bean: result, field: "y")}</td>

  <td>${fieldValue(bean: result, field: "photo")}</td>

  </tr>
</g:each>
</tbody>
</table>
<div class="pagination">
  <g:paginate total="${resultTotal}" />
</div>
</body>
</html>
