
<%@ page import="sc.model.Setor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'setor.label', default: 'Setor')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="list-setor" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table">
			<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'setor.nome.label', default: 'Nome')}" />
					
						<th><g:message code="setor.igreja.label" default="Igreja" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${setorInstanceList}" status="i" var="setorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${setorInstance.id}">${fieldValue(bean: setorInstance, field: "nome")}</g:link></td>
					
						<td><g:link controller="igreja" action="show" id="${setorInstance.igreja.id}">${fieldValue(bean: setorInstance, field: "igreja")}</g:link></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${setorInstanceCount ?: 0}" />
			</div>

			<g:link class="btn btn-success new" action="create" >${message(code: 'default.button.create.label', default: 'Create')}</g:link>
		</div>
	</body>
</html>
