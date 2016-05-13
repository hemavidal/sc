<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'permissao.label', default: 'Permissao')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <header class="codrops-header">
            <h1 style="display:inline"><g:message code="default.list.label" args="[entityName]" /></h1>
            <a class="btn btn-primary btn-lg" style="display:inline;float:right" href="/sc/permissao/create">Nova ${entityName}</a>
        </header>
        <div id="list-permissao" class="content scaffold-list" role="main">
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <div class="panel-body">
                <div class="dataTable_wrapper">
                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                        <thead>
                            <tr>
                                <th>${message(code: 'permissao.classe.label', default: 'Classe')}</th>
                                <th>${message(code: 'permissao.classeId.label', default: 'Classe ID')}</th>
                            </tr>
                        </thead>
                        <tbody>
                            <g:each in="${permissaoList}" status="i" var="permissao">
                                <tr class="odd gradeX  ${(i % 2) == 0 ? 'even' : 'odd'}">
                                
                                    <td><g:link controller="permissao" action="show" id="${permissao.id}">${fieldValue(bean: permissao, field: "classe")}</g:link></td>
                                    <td>${fieldValue(bean: permissao, field: "classeId")}</td>
                                
                                </tr>
                            </g:each>
                        </tbody>
                    </table>
                </div>
                <!-- /.table-responsive -->
            </div>

            <div class="pagination">
                <g:paginate total="${permissaoCount ?: 0}" />
            </div>
        </div>
    </body>
</html>