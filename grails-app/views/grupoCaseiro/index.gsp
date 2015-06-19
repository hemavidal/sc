
<%@ page import="sc.model.GrupoCaseiro" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'grupoCaseiro.label', default: 'GrupoCaseiro')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="list-grupoCaseiro" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table">
			<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'grupoCaseiro.nome.label', default: 'Nome')}" />
					
						<th><g:message code="grupoCaseiro.setor.label" default="Setor" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${grupoCaseiroInstanceList}" status="i" var="grupoCaseiroInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${grupoCaseiroInstance.id}">${fieldValue(bean: grupoCaseiroInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: grupoCaseiroInstance, field: "setor")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${grupoCaseiroInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
