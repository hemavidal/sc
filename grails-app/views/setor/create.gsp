<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'setor.label', default: 'Setor')}" />
		<g:if test="${params['igreja.id']}">
			<g:set var="forwardURL" value="/igreja/edit/${params['igreja.id']}" />
		</g:if>
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="create-setor" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message ${flash.type}" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${setor}">
			<ul class="errors" role="alert">
				<g:eachError bean="${setor}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:setor, action:'save', params:[forwardURL: forwardURL]]" >
				<fieldset class="form form-horizontal">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save btn btn-success" value="${message(code: 'default.button.create.label', default: 'Create')}" />
					<g:if test="${params['igreja.id']}"> 
						<g:link class="btn btn-default" controller="igreja" action="edit" id="${params['igreja.id']}" >${message(code: 'default.button.cancel.label', default: 'Cancel')}</g:link>
					</g:if>
					<g:else>
						<g:link class="btn btn-default" action="index" >${message(code: 'default.button.cancel.label', default: 'Cancel')}</g:link>
					</g:else>
					
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
