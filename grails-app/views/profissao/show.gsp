
<%@ page import="sc.model.Profissao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'profissao.label', default: 'Profissao')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<header class="codrops-header">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
        </header>
		<div id="show-profissao" class="content scaffold-show" role="main">
			<g:if test="${flash.message}">
			<div class="message alert ${flash.type}" role="status">${flash.message}</div>
			</g:if>
			<g:form url="[resource:profissao, action:'delete']" method="DELETE">
				
				<fieldset class="form form-horizontal">
					<g:render template="form"/>
				</fieldset>
				
				<fieldset class="buttons">
					<g:link class="edit btn btn-warning" action="edit" resource="${profissao}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
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
                            <h1>${pessoas.size()} pessoas desta profissão.</h1>
                            <g:each in="${pessoas}" status="i" var="pessoa">
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
