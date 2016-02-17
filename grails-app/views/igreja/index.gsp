
<%@ page import="sc.model.Igreja" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'igreja.label', default: 'Igreja')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
        <div id="list-igreja" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <div class="row" style="align-items: center;">
              <g:each in="${igrejaList}" status="i" var="igreja">
                <div class="col-xs-6 col-md-3">
                    <g:link class="thumbnail" style="text-align: center;" action="show" id="${igreja.id}">
                        <asset:image width="50px"src="igreja-icon-3.png"/>
                        ${fieldValue(bean: igreja, field: "cidade")}
                    </g:link>
                </div>
              </g:each>
            </div>
        </div>
		<!--<div id="list-igreja" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message ${flash.type}" role="status">${flash.message}</div>
			</g:if>
			<div class="panel-body">
                <div class="dataTable_wrapper">
                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
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
                 /.table-responsive
            </div>-->
			
			<g:link class="btn btn-success new" action="create" >${message(code: 'default.button.create.label', default: 'Create')}</g:link>
			
		</div>
	</body>
</html>
