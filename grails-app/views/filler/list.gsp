
<%@ page import="org.bef.Filler" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'filler.label', default: 'Filler')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-filler" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-filler" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="type" title="${message(code: 'filler.type.label', default: 'Type')}" />
					
						<g:sortableColumn property="donator" title="${message(code: 'filler.donator.label', default: 'Donator')}" />
					
						<g:sortableColumn property="x" title="${message(code: 'filler.x.label', default: 'X')}" />
					
						<g:sortableColumn property="y" title="${message(code: 'filler.y.label', default: 'Y')}" />
					
						<g:sortableColumn property="length" title="${message(code: 'filler.length.label', default: 'Length')}" />
					
						<g:sortableColumn property="height" title="${message(code: 'filler.height.label', default: 'Height')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${fillerInstanceList}" status="i" var="fillerInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${fillerInstance.id}">${fieldValue(bean: fillerInstance, field: "type")}</g:link></td>
					
						<td>${fieldValue(bean: fillerInstance, field: "donator")}</td>
					
						<td>${fieldValue(bean: fillerInstance, field: "x")}</td>
					
						<td>${fieldValue(bean: fillerInstance, field: "y")}</td>
					
						<td>${fieldValue(bean: fillerInstance, field: "length")}</td>
					
						<td>${fieldValue(bean: fillerInstance, field: "height")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${fillerInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
