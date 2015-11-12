<%@ page import="sc.model.Igreja" %>
<%@ page import="sc.model.Setor" %>
<%@ page import="sc.model.GrupoCaseiro" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="shortcut icon" href="${assetPath(src: 'fav-icon-2.png')}" type="image/x-icon">
    <link rel="apple-touch-icon" href="${assetPath(src: 'fav-icon-2.png')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'fav-icon-2.png')}">
    
    <asset:stylesheet src="application.css"/>

    <title>Sistema de Cadastro</title>

    <!-- MetisMenu CSS -->
    <link href="${resource(dir: 'bootstrap-theme/bower_components/metisMenu/dist/', file: 'metisMenu.min.css')}" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="${resource(dir: 'bootstrap-theme/bower_components/datatables-plugins/integration/bootstrap/3/', file: 'dataTables.bootstrap.css')}" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="${resource(dir: 'bootstrap-theme/bower_components/datatables-responsive/css/', file: 'dataTables.responsive.css')}" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${resource(dir: 'bootstrap-theme/dist/css/', file: 'sb-admin-2.css')}" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="${resource(dir: 'bootstrap-theme/bower_components/font-awesome/css/', file: 'font-awesome.min.css')}" rel="stylesheet">    

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/sc">Sistema de Cadastro</a>
            </div>
            <!-- /.navbar-header -->
            <g:if test="${session.user}">
            <ul class="nav navbar-top-links navbar-right">
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="/sc/usuario"><i class="fa fa-user fa-fw"></i> Usuários</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Configurações</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <g:link controller="usuario" action="logout">
                                <i class="fa fa-sign-out fa-fw"></i> 
                                Sair
                            </g:link>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input id="searchInput" type="text" class="form-control" placeholder="Pesquise...">
                                <span class="input-group-btn">
                                <button id="searchButton"class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                            </div>
                            <!-- /input-group -->
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-fw">
                                    <asset:image width="20px"src="igreja-icon-3.png"/>
                                </i> Igrejas
                                <span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <g:each in="${Igreja.list()}" status="i" var="igreja">
                                    <li>
                                        <g:link controller="igreja" action="show" id="${igreja.id}">${igreja.cidade} <span style="visibility:hidden;"class="badge"><i class="glyphicon glyphicon-edit"></i></span></g:link>

                                    </li>
                                </g:each>
                                <li>
                                    <g:link controller="igreja" action="create" style="color:green;">
                                        <i class="glyphicon glyphicon-plus"></i> 
                                        Nova Igreja
                                    </g:link>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-fw">
                                    <asset:image width="20px"src="setor-icon-2.png"/>
                                </i> Setores
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="nav nav-second-level">
                                <g:each in="${Setor.list()}" status="i" var="setor">
                                    <li>
                                        <g:link controller="setor" action="show" id="${setor.id}">${setor.nome}</g:link>
                                    </li>
                                </g:each>
                                <li>

                                    <g:link controller="setor" action="create" style="color:green;">
                                        <i class="glyphicon glyphicon-plus"></i> 
                                        Novo Setor
                                    </g:link>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-fw">
                                    <asset:image width="20px"src="home-icon-3.png"/>
                                </i> Grupos Caseiros
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="nav nav-second-level">
                                <g:each in="${GrupoCaseiro.list()}" status="i" var="grupoCaseiro">
                                    <li>
                                        <g:link controller="grupoCaseiro" action="show" id="${grupoCaseiro.id}">${grupoCaseiro.nome}</g:link>
                                    </li>
                                </g:each>
                                <li>
                                    <g:link controller="grupoCaseiro" action="create" style="color:green;">
                                        <i class="glyphicon glyphicon-plus"></i> 
                                        Novo Grupo Caseiro
                                    </g:link>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        
                        <li>
                            <g:link controller="pessoa" action="create" style="color:green;">
                                <i class="">
                                    <asset:image width="20px"src="add-user-1.png"/>
                                </i> 
                                Nova Pessoa
                            </g:link>

                            
                        </li>
                        <li>
                            <ul class="nav">
                                <button type="button" class="btn btn-outline btn-success">Nova Pessoa</button>
                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            </g:if>
            <!-- /.navbar-static-side -->
        </nav>

        <g:if test="${session.user}">
            <div id="page-wrapper">
                <g:layoutBody/>
            </div>
        </g:if>
        <g:else>
            <g:layoutBody/>
        </g:else>

        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <!--<script src="../bower_components/jquery/dist/jquery.min.js"></script>-->

    <!-- Bootstrap Core JavaScript -->
    <!--<script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>-->

    <!-- Metis Menu Plugin JavaScript -->
    <!--<script src="../bower_components/metisMenu/dist/metisMenu.min.js"></script>-->

    <!-- DataTables JavaScript -->
    <!--<script src="../bower_components/datatables/media/js/jquery.dataTables.min.js"></script>-->
    <!--<script src="../bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>-->

    <!-- Custom Theme JavaScript -->
    <!--<script src="../dist/js/sb-admin-2.js"></script>-->

    <asset:javascript src="application.js"/>

    <script src="${resource(dir: 'bootstrap-theme/bower_components/metisMenu/dist/', file: 'metisMenu.min.js')}"></script>

    <script src="${resource(dir: 'bootstrap-theme/bower_components/datatables/media/js/', file: 'jquery.dataTables.min.js')}"></script>

    <script src="${resource(dir: 'bootstrap-theme/bower_components/datatables-plugins/integration/bootstrap/3/', file: 'dataTables.bootstrap.min.js')}"></script>

    <!-- Morris Charts JavaScript -->
    <!--<script src="${resource(dir: 'bootstrap-theme/bower_components/raphael/', file: 'raphael-min.js')}"></script>-->
    <!--<script src="${resource(dir: 'bootstrap-theme/bower_components/morrisjs/', file: 'morris.min.js')}"></script>-->
    <!--<script src="${resource(dir: 'bootstrap-theme/js/', file: 'morris-data.js')}"></script>-->
    <script src="${resource(dir: 'bootstrap-theme/dist/js/', file: 'sb-admin-2.js')}"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
                "language": {
                    "sEmptyTable": "Nenhum registro encontrado",
                    "sInfo": "Mostrando de _START_ até _END_ de _TOTAL_ registros",
                    "sInfoEmpty": "Mostrando 0 até 0 de 0 registros",
                    "sInfoFiltered": "(Filtrados de _MAX_ registros)",
                    "sInfoPostFix": "",
                    "sInfoThousands": ".",
                    "sLengthMenu": "_MENU_ resultados por página",
                    "sLoadingRecords": "Carregando...",
                    "sProcessing": "Processando...",
                    "sZeroRecords": "Nenhum registro encontrado",
                    "sSearch": "Pesquisar",
                    "oPaginate": {
                        "sNext": "Próximo",
                        "sPrevious": "Anterior",
                        "sFirst": "Primeiro",
                        "sLast": "Último"
                    },
                    "oAria": {
                        "sSortAscending": ": Ordenar colunas de forma ascendente",
                        "sSortDescending": ": Ordenar colunas de forma descendente"
                    }
                },
                <g:if test="${params.search}">
                "oSearch": {"sSearch": "${params.search}"},
                </g:if>
                responsive: true,
                "iDisplayLength": 50
        });

        function searchPessoa() {
            if ($("searchInput").val() != '') {
                var contextPath='<%=request.getContextPath()%>';
                window.location.href = contextPath + "/pessoa?search=" + $("#searchInput").val();
            }
        }

        $("#searchInput").keypress(function(e) {
            if(e.which == 13) {
                console.log('"' + $(this).val() + '"');
                if ($(this).val() && $(this).val().trim() !== ''){
                    searchPessoa();
                }
            }
        });

        $("#searchButton").click(function (){
            searchPessoa();
        });

    });
    </script>

    <g:if test="${'usuario'.equals(controllerName) && actionName in ['edit', 'create', 'save', 'update']}">
        <asset:javascript src="edit_create_user.js"/>
    </g:if>
</body>

</html>
