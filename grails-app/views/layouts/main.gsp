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
				$('[id=dataTables-example] tfoot th').each( function () {
			        var title = $(this).text();
			        $(this).html( '<input class="form-control" style="min-width:60px" type="text"/>' );
			    } );

				//DataTables definition ---------------------------- BEGIN
				var dataTables = [];
				$('[id=dataTables-example]').each( function() {
					var table = $(this).DataTable({
							"dom": "Bfrtip",
					        "buttons": [
					        	"pageLength",
					        	{
					                'extend': 'pdfHtml5',
					                'orientation': 'landscape',
					               ' pageSize': 'LEGAL'
					            },
					            "excel",
					            "copy"
					        ],
					        
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
					dataTables.push(table);
				});
				//DataTables definition ---------------------------- END
				console.log(dataTables);
				//Apply the search by column
			    $(dataTables).each(function() {
			    	   //pay attention to capital D, which is mandatory to retrieve "api" datatables' object, as @Lionel said
				    this.columns().every( function () {
				        var that = this;
				 
				        $(this).parent().find('dataTables_filter input').on( 'keyup change', function () {
				        	console.log(this);
				            if ( that.search() !== this.value ) {
				                that.search( this.value ).draw();
				            }
				        } );
				    } );
			    } );
			    

			    // Remove accented character from search input as well
		        /*$('input[type=search]').keyup( function () {
		          	var newString = jQuery.fn.DataTable.ext.type.search.string( this.value );
		          	console.log(newString);
		          	$(this).closest('.dataTables_filter').parent().find('table').DataTable()
		          	.search(
		              newString
		            )
		            .draw()
		        } );*/
			});
		</script>
		<asset:deferredScripts/>
	</body>
</html>