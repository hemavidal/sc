<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'profissao.label', default: 'Profissao')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<header class="codrops-header">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
        </header>
		<div id="create-profissao" class="content scaffold-create" role="main">
			<g:if test="${flash.message}">
			<div class="message alert ${flash.type}" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${profissao}">
			<ul class="errors" role="alert">
				<g:eachError bean="${profissao}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:profissao, action:'save']" >
				<fieldset class="form form-horizontal">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save btn btn-success" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
