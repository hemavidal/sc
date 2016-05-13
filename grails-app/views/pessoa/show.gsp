
<%@ page import="sc.model.Pessoa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pessoa.label', default: 'Pessoa')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<header class="codrops-header">
            <h1 style="display:inline"><g:message code="default.show.label" args="[entityName]" /></h1>
            <a class="btn btn-default btn-lg" style="display:inline;float:right" href="/sc/grupoCaseiro/show/${pessoa.grupoCaseiro.id}">Voltar para ${pessoa.grupoCaseiro.nome}</a>
        </header>
		<div id="show-pessoa" class="content scaffold-show" role="main">
			<g:if test="${flash.message}">
				<div class="message alert ${flash.type}" role="status">${flash.message}</div>
			</g:if>
			<g:form url="[resource:pessoa, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit btn btn-warning" action="edit" resource="${pessoa}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
				<fieldset class="form form-horizontal">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:link class="edit btn btn-warning" action="edit" resource="${pessoa}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
			<h1></h1>
		</div>
	</body>
</html>
