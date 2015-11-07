
<%@ page import="sc.model.Profissao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'profissao.label', default: 'Profissao')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<h2>${Profissao.count()}</h2>
		<div class="panel-body">
                <div class="dataTable_wrapper">
                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                        <thead>
                            <tr>
                                <th>${message(code: 'pessoa.nome.label', default: 'Nome')}</th>
                            </tr>
                        </thead>
                        <tbody>
                            
                            <g:each in="${profissaoList}" status="i" var="profissao">
                                <tr class="odd gradeX  ${(i % 2) == 0 ? 'even' : 'odd'}">
                                
                                    <td><g:link action="show" id="${profissao.id}">${fieldValue(bean: profissao, field: "nome")}</g:link></td>
                                
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
