
<%@ page import="sc.model.Pessoa" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'pessoa.label', default: 'Pessoa')}" />
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
						
							<g:sortableColumn property="nome" title="${message(code: 'pessoa.nome.label', default: 'Nome')}" />
						
							<g:sortableColumn property="apelido" title="${message(code: 'pessoa.apelido.label', default: 'Apelido')}" />
						
							<g:sortableColumn property="nivelDeCrescimento" title="${message(code: 'pessoa.nivelDeCrescimento.label', default: 'Nivel De Crescimento')}" />
						
							<g:sortableColumn property="estadoCivil" title="${message(code: 'pessoa.estadoCivil.label', default: 'Estado Civil')}" />
						
							<g:sortableColumn property="sexo" title="${message(code: 'pessoa.sexo.label', default: 'Sexo')}" />
						
							<g:sortableColumn property="procedencia" title="${message(code: 'pessoa.procedencia.label', default: 'Procedencia')}" />
						
							<th></th>
						</tr>
					</thead>
					<tbody>
					<g:each in="${pessoaInstanceList}" var="pessoaInstance">
						<tr>
						
							<td>${fieldValue(bean: pessoaInstance, field: "nome")}</td>
						
							<td>${fieldValue(bean: pessoaInstance, field: "apelido")}</td>
						
							<td>${fieldValue(bean: pessoaInstance, field: "nivelDeCrescimento")}</td>
						
							<td>${fieldValue(bean: pessoaInstance, field: "estadoCivil")}</td>
						
							<td>${fieldValue(bean: pessoaInstance, field: "sexo")}</td>
						
							<td>${fieldValue(bean: pessoaInstance, field: "procedencia")}</td>
						
							<td class="link">
								<g:link action="show" id="${pessoaInstance.id}" class="btn btn-small">Show &raquo;</g:link>
							</td>
						</tr>
					</g:each>
					</tbody>
				</table>
				<div class="pagination">
					<bootstrap:paginate total="${pessoaInstanceTotal}" />
				</div>
			</div>

		</div>
	</body>
</html>
