
<%@ page import="sc.model.Igreja" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'igreja.label', default: 'Igreja')}" />
		<g:set var="setorLabel" value="${message(code: 'setor.label', default: 'Setor')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
        <header class="codrops-header">
            <h1 style="display:inline"><g:message code="default.show.label" args="[entityName]" /></h1>
            <a class="btn btn-primary btn-lg" style="display:inline;float:right" href="/sc/setor/create?igreja=${igreja.id}">Novo Setor</a>
        </header>
		<div id="show-igreja" class="content scaffold-show" role="main">
			<g:if test="${flash.message}">
				<div class="message ${flash.type}" role="status">${flash.message}</div>
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
                            
                            <g:each in="${igreja.setores}" status="i" var="setor">
                                <tr class="odd gradeX  ${(i % 2) == 0 ? 'even' : 'odd'}">
                                
                                    <td><g:link controller="setor" action="show" id="${setor.id}">${fieldValue(bean: setor, field: "nome")}</g:link></td>
                                
                                </tr>
                            </g:each>
                        </tbody>
                    </table>
                </div>
                <!-- /.table-responsive -->
            </div>
            <fieldset class="buttons">
                <g:link class="edit btn btn-warning" action="edit" resource="${igreja}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                <g:actionSubmit class="delete btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
            </fieldset>
		</div>
	</body>
</html>
