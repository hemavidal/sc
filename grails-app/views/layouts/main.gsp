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

    <g:layoutHead/>

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
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-envelope fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-messages">
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>Read All Messages</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-messages -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-tasks fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-tasks">
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 1</strong>
                                        <span class="pull-right text-muted">40% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                            <span class="sr-only">40% Complete (success)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 2</strong>
                                        <span class="pull-right text-muted">20% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                            <span class="sr-only">20% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 3</strong>
                                        <span class="pull-right text-muted">60% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (warning)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 4</strong>
                                        <span class="pull-right text-muted">80% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                            <span class="sr-only">80% Complete (danger)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Tasks</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-tasks -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-bell fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-alerts">
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-comment fa-fw"></i> New Comment
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                    <span class="pull-right text-muted small">12 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-envelope fa-fw"></i> Message Sent
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-tasks fa-fw"></i> New Task
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Alerts</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-alerts -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <g:link controller="usuario" action="logout">
                                <i class="fa fa-sign-out fa-fw"></i> 
                                Logout
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
                                        <a class="igrejaSelect" data-igreja-id="${igreja.id}">${igreja.cidade}</a>
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
                <g:if test="${params.search}">
                "oSearch": {"sSearch": "${params.search}"},
                </g:if>
                responsive: true
        });

        $("#searchButton").click(function (){
            if ($("searchInput").val() != '') {
                var contextPath='<%=request.getContextPath()%>';
                window.location.href = contextPath + "/pessoa?search=" + $("#searchInput").val();

            }
        });

        $(".igrejaSelect").click(function () {
            console.log($(this).attr("data-igreja-id"));
        });


    });
    </script>

</body>

</html>
