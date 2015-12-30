<!doctype html>
<html lang="en" class="no-js">
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="shortcut icon" href="${assetPath(src: 'fav-icon-2.png')}" type="image/x-icon">
    <link rel="apple-touch-icon" href="${assetPath(src: 'fav-icon-2.png')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'fav-icon-2.png')}">

	<link href='https://fonts.googleapis.com/css?family=Open+Sans:300,400,700' rel='stylesheet' type='text/css'>

	<asset:stylesheet src="application.css"/>
  	
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

</head>
<body>
	<header class="cd-main-header">
		<a href="#0" class="cd-logo"><img src="img/cd-logo.svg" alt="Logo"></a>
		
		<div class="cd-search is-hidden">
			<form action="#0">
				<input type="search" placeholder="Search...">
			</form>
		</div> <!-- cd-search -->

		<a href="#0" class="cd-nav-trigger">Menu<span></span></a>

		<nav class="cd-nav">
			<ul class="cd-top-nav">
				<li><a href="#0">Tour</a></li>
				<li><a href="#0">Support</a></li>
				<li class="has-children account">
					<a href="#0">
						<img src="img/cd-avatar.png" alt="avatar">
						Account
					</a>

					<ul>

						<li><a href="#0">My Account</a></li>
						<li><a href="#0">Edit Account</a></li>
						<li><a href="#0">Logout</a></li>
					</ul>
				</li>
			</ul>
		</nav>
	</header> <!-- .cd-main-header -->

	<main class="cd-main-content">
		<nav class="cd-side-nav">
			<ul>
				<li class="cd-label">Main</li>
				<li class="has-children overview">
					<a href="#0">Overview</a>
					
					<ul>
						<li><a href="#0">All Data</a></li>
						<li><a href="#0">Category 1</a></li>
						<li><a href="#0">Category 2</a></li>
					</ul>
				</li>
				<li class="has-children notifications active">
					<a href="#0">Notifications<span class="count">3</span></a>
					
					<ul>
						<li><a href="#0">All Notifications</a></li>
						<li><a href="#0">Friends</a></li>
						<li><a href="#0">Other</a></li>
					</ul>
				</li>

				<li class="has-children comments">
					<a href="#0">Comments</a>
					
					<ul>
						<li><a href="#0">All Comments</a></li>
						<li><a href="#0">Edit Comment</a></li>
						<li><a href="#0">Delete Comment</a></li>
					</ul>
				</li>
			</ul>

			<ul>
				<li class="cd-label">Secondary</li>
				<li class="has-children bookmarks">
					<a href="#0">Bookmarks</a>
					
					<ul>
						<li><a href="#0">All Bookmarks</a></li>
						<li><a href="#0">Edit Bookmark</a></li>
						<li><a href="#0">Import Bookmark</a></li>
					</ul>
				</li>
				<li class="has-children images">
					<a href="#0">Images</a>
					
					<ul>
						<li><a href="#0">All Images</a></li>
						<li><a href="#0">Edit Image</a></li>
					</ul>
				</li>

				<li class="has-children users">
					<a href="#0">Users</a>
					
					<ul>
						<li><a href="#0">All Users</a></li>
						<li><a href="#0">Edit User</a></li>
						<li><a href="#0">Add User</a></li>
					</ul>
				</li>
			</ul>

			<ul>
				<li class="cd-label">Action</li>
				<li class="action-btn"><a href="#0">+ Button</a></li>
			</ul>
		</nav>

		<div class="content-wrapper">
			
            <g:layoutBody/>

		</div> <!-- .content-wrapper -->
	</main> <!-- .cd-main-content -->

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