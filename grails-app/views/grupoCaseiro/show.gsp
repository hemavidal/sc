
<%@ page import="sc.model.GrupoCaseiro" %>
<%@ page import="sc.Situacao" %>
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
            <div class="col-md-4"></div>
            <h1 class="col-md-4">${grupoCaseiro.nome}<span>Pessoas Ativas</span></h1>
            <h1 class="col-md-4">
                
                <a class="btn btn-primary btn-lg" style="display:inline" href="/sc/pessoa/create?grupoCaseiro=${grupoCaseiro.id}">Nova Pessoa</a>
            </h1>
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
                        <tfoot>
                            <tr>
                                <th>${message(code: 'pessoa.nome.label', default: 'Nome')}</th>
                                <th>${message(code: 'pessoa.telefones.label', default: 'Telefones')}</th>
                                <th>${message(code: 'pessoa.discipulador.label', default: 'Discipulador')}</th>
                                <th>${message(code: 'pessoa.companheiro.label', default: 'Companheiro')}</th>
                            </tr>
                        </tfoot>
                        <tbody>
                            
                            <g:each in="${grupoCaseiro.pessoas}" status="i" var="pessoa">
                                <g:if test="${pessoa.situacao == Situacao.ATIVO}">
                                <tr>
                                    <td><g:link controller="pessoa" action="show" id="${pessoa.id}">${fieldValue(bean: pessoa, field: "nome")}</g:link></td>
                                
                                    <td>${fieldValue(bean: pessoa, field: "telefones").replace("[","").replace("]","")}</td>
                                
                                    <td>${fieldValue(bean: pessoa, field: "discipulador")}</td>

                                    <td>${fieldValue(bean: pessoa, field: "companheiro")}</td>
                                
                                </tr>
                                </g:if>
                            </g:each>
                        </tbody>
                    </table>
                </div>
                <header class="codrops-header">
                    <h1>Pessoas não ativas</h1>
                </header>

                <div class="dataTable_wrapper">
                    <table class="table table-bordered" id="dataTables-example">
                        <thead>
                            <tr>
                                <th>${message(code: 'pessoa.nome.label', default: 'Nome')}</th>
                                <th>${message(code: 'pessoa.telefones.label', default: 'Telefones')}</th>
                                <th>${message(code: 'pessoa.discipulador.label', default: 'Discipulador')}</th>
                                <th>${message(code: 'pessoa.companheiro.label', default: 'Companheiro')}</th>
                                <th>${message(code: 'pessoa.situacao.label', default: 'Situação')}</th>
                            </tr>
                        </thead>
                        <tbody>
                            
                            <g:each in="${grupoCaseiro.pessoas}" status="i" var="pessoa">
                                <g:if test="${pessoa.situacao != Situacao.ATIVO}">
                                <tr>
                                    <td><g:link controller="pessoa" action="show" id="${pessoa.id}">${fieldValue(bean: pessoa, field: "nome")}</g:link></td>
                                
                                    <td>${fieldValue(bean: pessoa, field: "telefones").replace("[","").replace("]","")}</td>
                                
                                    <td>${fieldValue(bean: pessoa, field: "discipulador")}</td>

                                    <td>${fieldValue(bean: pessoa, field: "companheiro")}</td>

                                    <td>${pessoa.situacao.getNome()}</td>
                                
                                </tr>
                                </g:if>
                            </g:each>
                        </tbody>
                    </table>
                </div>

                <fieldset class="buttons">
                    <g:link class="edit btn btn-warning" action="edit" resource="${grupoCaseiro}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <g:actionSubmit class="delete btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </div>
		</div>
	</body>
</html>
