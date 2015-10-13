
<%@ page import="sc.model.Pessoa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pessoa.label', default: 'Pessoa')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="list-pessoa" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
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
                                <th>${message(code: 'pessoa.estadoCivil.label', default: 'Estado Civil')}</th>
                                <th>${message(code: 'pessoa.sexo.label', default: 'Sexo')}</th>
                                <th>${message(code: 'pessoa.procedencia.label', default: 'Procedencia')}</th>
                            </tr>
                        </thead>
                        <tbody>
                            
                            <g:each in="${pessoaList}" status="i" var="pessoa">
                                <tr class="odd gradeX  ${(i % 2) == 0 ? 'even' : 'odd'}">
                                
                                    <td><g:link action="show" id="${pessoa.id}">${fieldValue(bean: pessoa, field: "nome")}</g:link></td>
                                
                                    <td>${fieldValue(bean: pessoa, field: "apelido")}</td>
                                
                                    <td>${fieldValue(bean: pessoa, field: "nivelDeCrescimento")}</td>
                                
                                    <td>${fieldValue(bean: pessoa, field: "estadoCivil")}</td>
                                
                                    <td>${fieldValue(bean: pessoa, field: "sexo")}</td>
                                
                                    <td>${fieldValue(bean: pessoa, field: "procedencia")}</td>
                                
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
