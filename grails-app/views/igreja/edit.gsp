<%@ page import="sc.model.Igreja" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'igreja.label', default: 'Igreja')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<header class="codrops-header">
            <h1 style="display:inline"><g:message code="default.edit.label" args="[entityName]" /></h1>
            <a class="btn btn-primary btn-lg" style="display:inline;float:right" href="/sc/setor/create?igreja=${igreja.id}">Novo Setor</a>
        </header>
		<div id="edit-igreja" class="content scaffold-edit" role="main">
			<g:if test="${flash.message}">
			<div class="message ${flash.type}" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${igreja}">
			<ul class="errors" role="alert">
				<g:eachError bean="${igreja}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:igreja, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${igreja?.version}" />
				<fieldset class="form form-horizontal">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save btn btn-success" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
					<g:link class="btn btn-default" action="show" id="${igreja.id}">${message(code: 'default.button.cancel.label', default: 'Cancel')}</g:link>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
