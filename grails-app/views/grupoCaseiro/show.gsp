
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
		<div id="show-grupoCaseiro" class="content scaffold-show" role="main">
			<h1>${grupoCaseiro.nome}</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
						
			<div class="panel-body">
                <div class="dataTable_wrapper">
                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                        <thead>
                            <tr>
                                <th>${message(code: 'pessoa.nome.label', default: 'Nome')}</th>
                                <th>${message(code: 'pessoa.apelido.label', default: 'Apelido')}</th>
                                <th>${message(code: 'pessoa.nivelDeCrescimento.label', default: 'Nivel De Crescimento')}</th>
                            </tr>
                        </thead>
                        <tbody>
                            
                            <g:each in="${grupoCaseiro.pessoas}" status="i" var="pessoa">
                                <tr class="odd gradeX  ${(i % 2) == 0 ? 'even' : 'odd'}">
                                
                                    <td><g:link controller="pessoa" action="show" id="${pessoa.id}">${fieldValue(bean: pessoa, field: "nome")}</g:link></td>
                                
                                    <td>${fieldValue(bean: pessoa, field: "apelido")}</td>
                                
                                    <td>${fieldValue(bean: pessoa, field: "nivelDeCrescimento")}</td>
                                
                                </tr>
                            </g:each>
                        </tbody>
                    </table>
                </div>
		</div>
	</body>
</html>
