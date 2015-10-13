<%@ page import="sc.model.Igreja" %>
<%@ page import="sc.model.Setor" %>
<%@ page import="sc.model.GrupoCaseiro" %>


            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                            </div>
                            <!-- /input-group -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Igrejas<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <g:each in="${Igreja.list()}" status="i" var="igreja">
                                    <li>
                                        <g:link controller="igreja" action="show" id="${igreja.id}">${igreja.cidade}</g:link>
                                    </li>
                                </g:each>
                                <li>
                                    <g:link controller="igreja" action="create">Nova Igreja</g:link>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-wrench fa-fw"></i> Setores<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <g:each in="${Setor.list()}" status="i" var="setor">
                                    <li>
                                        <g:link controller="setor" action="show" id="${setor.id}">${setor.nome}</g:link>
                                    </li>
                                </g:each>
                                <li>
                                    <g:link controller="setor" action="create">Novo Setor</g:link>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-fw "></i> Grupos Caseiros<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <g:each in="${GrupoCaseiro.list()}" status="i" var="grupoCaseiro">
                                    <li>
                                        <g:link controller="grupoCaseiro" action="show" id="${grupoCaseiro.id}">${grupoCaseiro.nome}</g:link>
                                    </li>
                                </g:each>
                                <li>
                                    <g:link controller="grupoCaseiro" action="create">Novo Grupo Caseiro</g:link>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->