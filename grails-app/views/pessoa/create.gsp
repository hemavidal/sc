<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pessoa.label', default: 'Pessoa')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<header class="codrops-header">
            <h1 style="display:inline"><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${params.grupoCaseiro}">
            	<a class="btn btn-default btn-lg" style="display:inline;float:right" href="/sc/grupoCaseiro/show/${sc.model.GrupoCaseiro.findById(params.grupoCaseiro).id}">Voltar para ${sc.model.GrupoCaseiro.findById(params.grupoCaseiro)}</a>
           	</g:if>

        </header>
		<div id="create-pessoa" class="content scaffold-create" role="main">
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
			<g:form url="[resource:pessoa, action:'save']" >
				<fieldset class="buttons">
					<g:submitButton name="create" class="save btn btn-success" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
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
