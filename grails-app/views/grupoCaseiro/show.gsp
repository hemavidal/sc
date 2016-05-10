
<%@ page import="sc.model.GrupoCaseiro" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'grupoCaseiro.label', default: 'GrupoCaseiro')}" />
		<g:set var="pessoaLabel" value="${message(code: 'pessoa.label', default: 'Pessoa')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
        <header class="codrops-header">
            <h1 style="display:inline">${grupoCaseiro.nome}</h1>
            <a class="btn btn-primary btn-lg" style="display:inline;float:right" href="/sc/pessoa/create?grupoCaseiro=${grupoCaseiro.id}">Nova Pessoa</a>
        </header>
		<div id="show-grupoCaseiro" class="content scaffold-show" role="main">
			<g:if test="${flash.message}">
			<div class="message ${flash.type}" role="status">${flash.message}</div>
			</g:if>
						
			<div class="panel-body">
                <div class="dataTable_wrapper">
                    <table class="table table-bordered" id="dataTables-example">
                        <thead>
                            <tr>
                                <th>${message(code: 'pessoa.nome.label', default: 'Nome')}</th>
                                <th>${message(code: 'pessoa.telefones.label', default: 'Telefones')}</th>
                                <th>${message(code: 'pessoa.discipulador.label', default: 'Discipulador')}</th>
                                <th>${message(code: 'pessoa.companheiro.label', default: 'Companheiro')}</th>
                            </tr>
                        </thead>
                        <tbody>
                            
                            <g:each in="${grupoCaseiro.pessoas}" status="i" var="pessoa">
                                <tr>
                                    <td><g:link controller="pessoa" action="show" id="${pessoa.id}">${fieldValue(bean: pessoa, field: "nome")}</g:link></td>
                                
                                    <td>${fieldValue(bean: pessoa, field: "telefones").replace("[","").replace("]","")}</td>
                                
                                    <td>${fieldValue(bean: pessoa, field: "discipulador")}</td>

                                    <td>${fieldValue(bean: pessoa, field: "companheiro")}</td>
                                
                                </tr>
                            </g:each>
                        </tbody>
                    </table>
                </div>
                <fieldset class="buttons">
                    <g:link class="edit btn btn-warning" action="edit" resource="${grupoCaseiro}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <g:actionSubmit class="delete btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
                <h1><g:message code="usuarios.label" default="Usuários" /></h1>
            </div>
		</div>
	</body>
</html>
