
<%@ page import="sc.acesso.Usuario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
        <header class="codrops-header">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
        </header>
		<div id="list-usuario" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="message ${flash.type}" role="status">${flash.message}</div>
			</g:if>
			
			<div class="panel-body">
                <div class="dataTable_wrapper">
                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                        <thead>
                            <tr>
                                <th>${message(code: 'usuario.login.label', default: 'Login')}</th>
                                <th>${message(code: 'usuario.tipo.label', default: 'Tipo')}</th>
                                
                            </tr>
                        </thead>
                        <tbody>
                            
                            <g:each in="${usuarioList}" status="i" var="usuario">
                                <tr class="odd gradeX  ${(i % 2) == 0 ? 'even' : 'odd'}">
                                
                                    <td><g:link action="show" id="${usuario.id}">${fieldValue(bean: usuario, field: "login")}</g:link></td>
                                    <td><g:link action="show" id="${usuario.id}">${fieldValue(bean: usuario, field: "tipo")}</g:link></td>
                                
                                </tr>
                            </g:each>
                        </tbody>
                    </table>
                </div>
                <!-- /.table-responsive -->
            </div>
			<g:link class="btn btn-success new" action="create" >${message(code: 'default.button.create.label', default: 'Create')}</g:link>
		</div>
	</body>
</html>
