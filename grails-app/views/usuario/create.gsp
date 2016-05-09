<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>

	</head>
	<body>
		 <header class="codrops-header">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
        </header>
		<div id="create-usuario" class="content scaffold-create" role="main">
			<g:if test="${flash.message}">
				<div class="message ${flash.type}" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${usuario}">
			<ul class="errors" role="alert">
				<g:eachError bean="${usuario}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:usuario, action:'save']" >
				<fieldset class="form form-horizontal">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save btn btn-success" value="${message(code: 'default.button.create.label', default: 'Create')}" />
					<g:link class="btn btn-default" action="index" >${message(code: 'default.button.cancel.label', default: 'Cancel')}</g:link>
				</fieldset>
			</g:form>
		</div>
		<g:render template="init_dropbox_dependencies"/>
	</body>
</html>
