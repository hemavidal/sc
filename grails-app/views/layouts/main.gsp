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

    <asset:stylesheet src="application.css"/>

    <link rel="stylesheet" href="assets/demo.css">
    <link rel="stylesheet" href="assets/sidebar-left.css">

    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
    <link href='http://fonts.googleapis.com/css?family=Cookie' rel='stylesheet' type='text/css'>

</head>

<body>
    
    <aside class="sidebar-left">

        <a class="company-logo" href="#">Logo</a>

        <div class="sidebar-links">
            <a class="link-blue" href="/sc/igreja"><i class="fa fa-picture-o"></i>Igrejas</a>
            <a class="link-red" href="/sc/setor"><i class="fa fa-heart-o"></i>Setores</a>
            <a class="link-yellow selected" href="/sc/grupoCaseiro"><i class="fa fa-keyboard-o"></i>Grupos Caseiros</a>
            <a class="link-green" href="#"><i class="fa fa-map-marker"></i>Usuários</a>
        </div>

    </aside>

    <div class="main-content">

        <div class="menu">

            <g:if test="${session.user}">
                
                    <g:layoutBody/>
                
            </g:if>
            <g:else>
                <g:layoutBody/>
            </g:else>

        </div>

    </div>
        

        <!-- /#page-wrapper -->

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
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    
    <script>
    $(function () {
        var links = $('.sidebar-links > a');

        links.on('click', function () {

            links.removeClass('selected');
            $(this).addClass('selected');

        })
    });

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


        $("a.editInline").css("display","none");

        $('li').on('mouseover mouseout',function(){
             $(this).find('.editInline').toggle();
             //find the closest li and find its children with class editInLine and 
             //toggle its display using 'toggle()'
        });

    });
    </script>

    <g:if test="${'usuario'.equals(controllerName) && actionName in ['edit', 'create', 'save', 'update']}">
        <asset:javascript src="edit_create_user.js"/>
    </g:if>
</body>

</html>
