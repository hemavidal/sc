<%@ page import="sc.model.Profissao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'profissao.label', default: 'Profissao')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<header class="codrops-header">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
        </header>
		<div id="edit-profissao" class="content scaffold-edit" role="main">
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
			<g:form url="[resource:profissao, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${profissao?.version}" />
				<fieldset class="form form-horizontal">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save btn btn-success" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
