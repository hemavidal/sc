
<%@ page import="sc.model.Igreja" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'igreja.label', default: 'Igreja')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="row-fluid">
			
			<div class="span3">
				<div class="well">
					<ul class="nav nav-list">
						<li class="nav-header">${entityName}</li>
						<li class="active">
							<g:link class="list" action="list">
								<i class="icon-list icon-white"></i>
								<g:message code="default.list.label" args="[entityName]" />
							</g:link>
						</li>
						<li>
							<g:link class="create" action="create">
								<i class="icon-plus"></i>
								<g:message code="default.create.label" args="[entityName]" />
							</g:link>
						</li>
					</ul>
				</div>
			</div>

			<div class="span9">
				
				<div class="page-header">
					<h1><g:message code="default.list.label" args="[entityName]" /></h1>
				</div>

				<g:if test="${flash.message}">
				<bootstrap:alert class="alert-info">${flash.message}</bootstrap:alert>
				</g:if>
				
				<table class="table table-striped">
					<thead>
						<tr>
						
							<g:sortableColumn property="cidade" title="${message(code: 'igreja.cidade.label', default: 'Cidade')}" />
						
							<g:sortableColumn property="estado" title="${message(code: 'igreja.estado.label', default: 'Estado')}" />
						
							<g:sortableColumn property="pais" title="${message(code: 'igreja.pais.label', default: 'Pais')}" />
						
							<th></th>
						</tr>
					</thead>
					<tbody>
					<g:each in="${igrejaInstanceList}" var="igrejaInstance">
						<tr>
						
							<td>${fieldValue(bean: igrejaInstance, field: "cidade")}</td>
						
							<td>${fieldValue(bean: igrejaInstance, field: "estado")}</td>
						
							<td>${fieldValue(bean: igrejaInstance, field: "pais")}</td>
						
							<td class="link">
								<g:link action="show" id="${igrejaInstance.id}" class="btn btn-small">Show &raquo;</g:link>
							</td>
						</tr>
					</g:each>
					</tbody>
				</table>
				<div class="pagination">
					<bootstrap:paginate total="${igrejaInstanceTotal}" />
				</div>
			</div>

		</div>
	</body>
</html>
