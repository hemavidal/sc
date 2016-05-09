
<%@ page import="sc.model.Igreja" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'igreja.label', default: 'Igreja')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
        <header class="codrops-header">
           <h1><g:message code="default.list.label" args="[entityName]" /></h1>
        </header>
		<div id="list-igreja" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="message ${flash.type}" role="status">${flash.message}</div>
			</g:if>
			<div class="panel-body">
                <div class="dataTable_wrapper">
                    <table class="table  table-bordered" id="dataTables-example">
                        <thead>
                            <tr>
                                <th>${message(code: 'igreja.cidade.label', default: 'Cidade')}</th>
                                
                            </tr>
                        </thead>
                        <tbody>
                            
                            <g:each in="${igrejaList}" status="i" var="igreja">
                                <tr class="odd gradeX  ${(i % 2) == 0 ? 'even' : 'odd'}">
                                
                                    <td><g:link action="show" id="${igreja.id}">${fieldValue(bean: igreja, field: "cidade")}</g:link></td>
                                
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
