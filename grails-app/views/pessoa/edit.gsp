<%@ page import="sc.model.Pessoa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pessoa.label', default: 'Pessoa')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<header class="codrops-header">
            <h1 style="display:inline"><g:message code="default.edit.label" args="[entityName]" /></h1>
            <a class="btn btn-default btn-lg" style="display:inline;float:right" href="/sc/grupoCaseiro/show/${pessoa.grupoCaseiro.id}">Voltar para ${pessoa.grupoCaseiro.nome}</a>
        </header>
		<div id="edit-pessoa" class="content scaffold-edit" role="main">
			<g:if test="${flash.message}">
				<div class="message alert ${flash.type}" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${pessoa}">
			<ul class="errors" role="alert">
				<g:eachError bean="${pessoa}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:pessoa, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${pessoa?.version}" />
				<fieldset class="buttons">
					<g:actionSubmit class="save btn btn-success" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
					<g:link class="btn btn-default" action="show" id="${pessoa.id}">${message(code: 'default.button.cancel.label', default: 'Cancel')}</g:link>
				</fieldset>
				<fieldset class="form form-horizontal">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save btn btn-success" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
					<g:link class="btn btn-default" action="show" id="${pessoa.id}">${message(code: 'default.button.cancel.label', default: 'Cancel')}</g:link>
				</fieldset>
			</g:form>
			<h1></h1>
		</div>
	</body>
</html>
