
<%@ page import="sc.model.Setor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'setor.label', default: 'Setor')}" />
		<g:set var="grupoCaseiroLabel" value="${message(code: 'grupoCaseiro.label', default: 'Grupo Caseiro')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="show-setor" class="content scaffold-show" role="main">
			<h1>${setor.nome}</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			
			<div class="panel-body">
                <div class="dataTable_wrapper">
                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                        <thead>
                            <tr>
                                <th>${message(code: 'setor.nome.label', default: 'Nome')}</th>
                                
                            </tr>
                        </thead>
                        <tbody>
                            
                            <g:each in="${setor.gruposCaseiros}" status="i" var="grupoCaseiro">
                                <tr class="odd gradeX  ${(i % 2) == 0 ? 'even' : 'odd'}">
                                
                                    <td><g:link controller="grupoCaseiro" action="show" id="${grupoCaseiro.id}">${fieldValue(bean: grupoCaseiro, field: "nome")}</g:link></td>
                                
                                </tr>
                            </g:each>
                        </tbody>
                    </table>
                </div>
                <!-- /.table-responsive -->
                <fieldset class="buttons">
                    <g:link class="edit btn btn-warning" action="edit" resource="${setor}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <g:actionSubmit class="delete btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </div>


		</div>
	</body>
</html>
