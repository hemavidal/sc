					<div class="mp-level">
						<h2 class="icon icon-world creatable">Igrejas<span style=" float:right;cursor:pointer" class="glyphicon glyphicon-plus" hidden data-href="/sc/igreja/create"></span></h2>
						<ul>
							<g:each in="${sc.model.Igreja.list(sort:"cidade")}" var="igreja">
								<li class="icon icon-arrow-left">
									<g:if test="${session.user.temPermissaoPara(igreja)}">
										<a class="icon editable" href="#">${igreja.cidade}<span style=" float:right" class="glyphicon glyphicon-edit" hidden data-href="/sc/igreja/show/${igreja.id}"></span></a>
										<div class="mp-level">
											<h2 class="icon creatable">Setores<span style="float:right;cursor:pointer" class="glyphicon glyphicon-plus" hidden data-href="/sc/setor/create?igreja=${igreja.id}"></span></h2>
											<a class="mp-back" href="#">Voltar</a>
											<ul>
												<g:each in="${sc.model.Setor.findAllByIgreja(igreja, [sort:"nome"])}" var="setor">
													<li class="icon icon-arrow-left">
													<a class="icon editable">${setor.nome}<span style="float:right;" class="glyphicon glyphicon-edit" hidden data-href="/sc/setor/show/${setor.id}"></span></a>
													<div class="mp-level">
														<h2 class="icon creatable">Grupos Caseiros<span style=" float:right;cursor:pointer;" class="glyphicon glyphicon-plus" hidden data-href="/sc/grupoCaseiro/create?setor=${setor.id}"></span></h2>
														<a class="mp-back">Voltar</a>
														<ul>
															<g:each in="${sc.model.GrupoCaseiro.findAllBySetor(setor,[sort:"nome"])}" var="gc">
																<li class="editable"><a href="/sc/grupoCaseiro/show/${gc.id}">${gc.nome}<span style="float:right" class="glyphicon glyphicon-edit" hidden data-href="/sc/grupoCaseiro/show/${gc.id}"></span></a></li>
															</g:each>
														</ul>
													</div>
													</li>
												</g:each>
											</ul>
										</div>
									</g:if>
								</li>
							</g:each>
							<!--<li class="icon">
								<a class="icon icon icon-config creatable" href="/sc/usuario">
									Usuários
									<span style=" float:right;cursor:pointer" class="glyphicon glyphicon-plus" hidden data-href="/sc/usuario/create/"></span>
								</a>
							</li>-->
							<li><a class="icon creatable" href="/sc/usuario">Usuários<span style=" float:right;cursor:pointer" class="glyphicon glyphicon-plus" hidden data-href="/sc/usuario/create/"></span></a></li>
							<li><a class="icon creatable" href="/sc/profissao">Profissões<span style=" float:right;cursor:pointer" class="glyphicon glyphicon-plus" hidden data-href="/sc/profissao/create/"></span></a></li>
							<li><a class="icon creatable" href="/sc/permissao">Permissões<span style=" float:right;cursor:pointer" class="glyphicon glyphicon-plus" hidden data-href="/sc/permissao/create/"></span></a></li>
							<li><a class="icon creatable" href="/sc/pessoa">Pessoas<span style=" float:right;cursor:pointer" class="glyphicon glyphicon-plus" hidden data-href="/sc/pessoa/create/"></span></a></li>
						
						</ul>
					</div>