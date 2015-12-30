<%@ page import="sc.model.Igreja" %>
<%@ page import="sc.model.Setor" %>
<%@ page import="sc.model.GrupoCaseiro" %>


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
            <!-- /.navbar-static-side -->