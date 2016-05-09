<div class="mp-level">
	<h2 class="icon icon-display creatable">Setores</h2>
	<a class="mp-back" href="#">Voltar</a>
		<ul>
			<g:each in="${sc.model.Setor.list(sort:"nome")}" var="setor">
				<g:if test="${session.user.temPermissaoPara(setor)}">
					<li class="icon icon-arrow-left">
					<a class="icon icon-display editable">${setor.nome}<span style="float:right;" class="glyphicon glyphicon-edit" hidden data-href="/sc/setor/edit/${setor.id}"></span></a>
					<div class="mp-level">
						<h2 class="icon icon-display creatable">Grupos Caseiros<span style=" float:right;cursor:pointer;" class="glyphicon glyphicon-plus" hidden data-href="/sc/grupoCaseiro/create?setor=${setor.id}"></span></h2>
						<a class="mp-back">Voltar</a>
						<ul>
							<g:each in="${sc.model.GrupoCaseiro.findAllBySetor(setor,[sort:"nome"])}" var="gc">
								<li class="editable"><a href="/sc/grupoCaseiro/show/${gc.id}">${gc.nome}<span style="float:right" class="glyphicon glyphicon-edit" hidden data-href="/sc/grupoCaseiro/edit/${gc.id}"></span></a></li>
							</g:each>
						</ul>
					</div>
					</li>
				</g:if>
			</g:each>
		</ul>
</div>