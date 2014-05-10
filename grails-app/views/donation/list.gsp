
<%@ page import="org.bef.Donation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'donation.label', default: 'Donation')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-donation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-donation" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="type" title="${message(code: 'donation.type.label', default: 'Type')}" />
					
						<g:sortableColumn property="firstRow" title="${message(code: 'donation.firstRow.label', default: 'First Row')}" />
					
						<g:sortableColumn property="fourthRow" title="${message(code: 'donation.fourthRow.label', default: 'Fourth Row')}" />
					
						<g:sortableColumn property="secondRow" title="${message(code: 'donation.secondRow.label', default: 'Second Row')}" />
					
						<g:sortableColumn property="thirdRow" title="${message(code: 'donation.thirdRow.label', default: 'Third Row')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'donation.name.label', default: 'Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${donationInstanceList}" status="i" var="donationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${donationInstance.id}">${fieldValue(bean: donationInstance, field: "type")}</g:link></td>
					
						<td>${fieldValue(bean: donationInstance, field: "firstRow")}</td>
					
						<td>${fieldValue(bean: donationInstance, field: "fourthRow")}</td>
					
						<td>${fieldValue(bean: donationInstance, field: "secondRow")}</td>
					
						<td>${fieldValue(bean: donationInstance, field: "thirdRow")}</td>
					
						<td>${fieldValue(bean: donationInstance, field: "name")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${donationInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
