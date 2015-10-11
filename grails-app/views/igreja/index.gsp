
<%@ page import="sc.model.Igreja" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'igreja.label', default: 'Igreja')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="list-igreja" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table">
			<thead>
					<tr>
					
						<g:sortableColumn property="cidade" title="${message(code: 'igreja.cidade.label', default: 'Cidade')}" />
					
						<g:sortableColumn property="estado" title="${message(code: 'igreja.estado.label', default: 'Estado')}" />
					
						<g:sortableColumn property="pais" title="${message(code: 'igreja.pais.label', default: 'Pais')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${igrejaList}" status="i" var="igreja">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${igreja.id}">${fieldValue(bean: igreja, field: "cidade")}</g:link></td>
					
						<td>${fieldValue(bean: igreja, field: "estado")}</td>
					
						<td>${fieldValue(bean: igreja, field: "pais")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${igrejaCount ?: 0}" />
			</div>
			
			<g:link class="btn btn-success new" action="create" >${message(code: 'default.button.create.label', default: 'Create')}</g:link>
			
		</div>
	</body>
</html>
