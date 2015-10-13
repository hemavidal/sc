
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
            </div>
		</div>
	</body>
</html>
