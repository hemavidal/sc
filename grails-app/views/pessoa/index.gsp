
<%@ page import="sc.model.Pessoa" %>
<%@ page import="groovy.time.TimeCategory" %>
<%@ page import="groovy.time.TimeDuration" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pessoa.label', default: 'Pessoa')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
        <header class="codrops-header">
            <h1>Pessoas</h1>
        </header>
		<div id="list-pessoa" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="message alert ${flash.type}" role="status">${flash.message}</div>
			</g:if>

			<div class="panel-body">
                <div class="dataTable_wrapper">
                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                        <thead>
                            <tr>
                                <th>${message(code: 'pessoa.nome.label', default: 'Nome')}</th>
                                <th>${message(code: 'pessoa.apelido.label', default: 'Apelido')}</th>
                                <th>${message(code: 'pessoa.nivelDeCrescimento.label', default: 'Nivel De Crescimento')}</th>
                                <th>${message(code: 'pessoa.telefones.label', default: 'Telefones')}</th>
                                <th>${message(code: 'pessoa.discipulador.label', default: 'Discipulador')}</th>
                                <th>${message(code: 'pessoa.companheiro.label', default: 'Companheiro')}</th>
                                <th>${message(code: 'pessoa.idade.label', default: 'Idade')}</th>
                                <th>${message(code: 'pessoa.sexo.label', default: 'Sexo')}</th>
                                <th>${message(code: 'pessoa.situacao.label', default: 'Situação')}</th>
                                <th>${message(code: 'pessoa.grupoCaseiro.label', default: 'Grupo Caseiro')}</th>


                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>${message(code: 'pessoa.nome.label', default: 'Nome')}</th>
                                <th>${message(code: 'pessoa.apelido.label', default: 'Apelido')}</th>
                                <th>${message(code: 'pessoa.nivelDeCrescimento.label', default: 'Nivel De Crescimento')}</th>
                                <th>${message(code: 'pessoa.telefones.label', default: 'Telefones')}</th>
                                <th>${message(code: 'pessoa.discipulador.label', default: 'Discipulador')}</th>
                                <th>${message(code: 'pessoa.companheiro.label', default: 'Companheiro')}</th>
                                <th>${message(code: 'pessoa.idade.label', default: 'Idade')}</th>
                                <th>${message(code: 'pessoa.sexo.label', default: 'Sexo')}</th>
                                <th>${message(code: 'pessoa.situacao.label', default: 'Situação')}</th>
                                <th>${message(code: 'pessoa.grupoCaseiro.label', default: 'Grupo Caseiro')}</th>


                            </tr>
                        </tfoot>
                        <tbody>
                            
                            <g:each in="${pessoaList}" status="i" var="pessoa">
                                <tr class="odd gradeX  ${(i % 2) == 0 ? 'even' : 'odd'}">
                                    <td><g:link action="show" id="${pessoa.id}">${fieldValue(bean: pessoa, field: "nome")}</g:link></td>
                                
                                    <td>${fieldValue(bean: pessoa, field: "apelido")}</td>
                                
                                    <td>${fieldValue(bean: pessoa, field: "nivelDeCrescimento")}</td>
                                
                                    <td>${fieldValue(bean: pessoa, field: "telefones")}</td>
                                
                                    <td>${fieldValue(bean: pessoa, field: "discipulador")}</td>
                                
                                    <td>${fieldValue(bean: pessoa, field: "companheiro")}</td>
                                    <td>${(TimeCategory.minus( new Date(), pessoa.nascimento ).getDays() / 365).intValue()}</td>
                                    <td>${pessoa.sexo.getNome()}</td>
                                    <td>${pessoa.situacao.getNome()}</td>
                                    <td>${pessoa.grupoCaseiro.nome}</td>
                                </tr>
                            </g:each>
                        </tbody>
                    </table>
                </div>
                <!-- /.table-responsive -->
            </div>
		</div>
    </body>
</html>
