<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'permissao.label', default: 'Permissao')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
       <header class="codrops-header">
            <h1 style="display:inline"><g:message code="default.create.label" args="[entityName]" /></h1>
            <a class="btn btn-default btn-lg" style="display:inline;float:right" href="/sc/permissao/index">Voltar para lista de ${entityName}</a>
        </header>
        <div id="create-permissao" class="content scaffold-create" role="main">
            
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.permissao}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.permissao}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form action="save">
                <fieldset class="form">
                    <g:render template="form"/>
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
