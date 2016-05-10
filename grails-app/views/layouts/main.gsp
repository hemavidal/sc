<!DOCTYPE html>
<html lang="en" class="">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Sistema de Cadastro</title>
		<meta name="description" content="Multi-Level Push Menu: Off-screen navigation with multiple levels" />
		<meta name="keywords" content="multi-level, menu, navigation, off-canvas, off-screen, mobile, levels, nested, transform" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<asset:stylesheet src="application.css"/>
		
	</head>
	<body>
		<div id="main-div">
			<!-- Push Wrapper -->
			<div class="mp-pusher" id="mp-pusher">
				<!-- mp-menu -->
				<nav id="mp-menu" class="mp-menu">
					<g:if test="${session.user.isAdmin || sc.acesso.Permissao.findByClasseAndUsuario("Igreja", session.user)}">
						<g:render template="/layouts/usuario_igreja"/>
					</g:if>
					<g:elseif test="${sc.acesso.Permissao.findByClasseAndUsuario("Setor", session.user)}">
						<g:render template="/layouts/usuario_setor"/>
					</g:elseif>
				</nav>
				<!-- /mp-menu -->

				<span id="trigger" style="font-size:30px;cursor:pointer;padding:10px" class="glyphicon glyphicon-menu-hamburger dropdown"></span>
				
				<div class="container">
					<g:layoutBody/>
				</div>

			</div><!-- /pusher -->
		</div><!-- /container -->
		

		<asset:javascript src="application.js"/>
		<script>
			menuItemChoiced = "";
			
			new mlPushMenu( document.getElementById( 'mp-menu' ), document.getElementById( 'trigger' ), {
				type : 'cover'
			} );

			$(document).ready(function(){
				$(".menu-")

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
				    "oSearch": {"sSearch": "${params.search ? params.search : ''}"},
				    "responsive": true,
				    "iDisplayLength": 50
				});
			});
		</script>
		<asset:deferredScripts/>
	</body>
</html>