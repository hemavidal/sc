<%@ page import="sc.model.GrupoCaseiro" %>



<div class="form-group fieldcontain ${hasErrors(bean: grupoCaseiro, field: 'nome', 'error')} required">
	<label for="nome" class="col-sm-2 control-label">
		<g:message code="grupoCaseiro.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:textField class="form-control" name="nome" required="" value="${grupoCaseiro?.nome}" disabled="${'show'.equals(actionName)}"/>
	</div>

</div>

<g:if test="${!'create'.equals(actionName)}">
	<div class="form-group fieldcontain ${hasErrors(bean: grupoCaseiro, field: 'pessoas', 'error')} ">
		<label for="pessoas" class="col-sm-2 control-label">
			<g:message code="grupoCaseiro.pessoas.label" default="Pessoas" />
			
		</label>
		<div class="col-sm-10">
			<table class="table table-bordered">
			<thead>
					<tr>
										
						<g:sortableColumn property="apelido" title="${message(code: 'pessoa.apelido.label', default: 'Apelido')}" />

						<g:sortableColumn property="telefones" title="${message(code: 'pessoa.telefones.label', default: 'Telefones')}" />

						<g:sortableColumn property="discipulador" title="${message(code: 'pessoa.discipulador.label', default: 'Discipulador')}" />

						<g:sortableColumn property="email" title="${message(code: 'pessoa.email.label', default: 'Email')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${grupoCaseiro.pessoas}" status="i" var="pessoa">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link controller="pessoa" action="show" id="${pessoa.id}">${fieldValue(bean: pessoa, field: "apelido")}</g:link></td>
					
						<td>${fieldValue(bean: pessoa, field: "telefones")}</td>
					
						<td>${fieldValue(bean: pessoa, field: "discipulador")}</td>
					
						<td>${fieldValue(bean: pessoa, field: "email")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>

			<g:if test="${!'show'.equals(actionName)}">
				<div class="col-sm-10">
					<li class="add">
						<g:link class="btn btn-default" controller="pessoa" action="create" params="['grupoCaseiro.id': grupoCaseiro?.id]">${message(code: 'default.add.label', args: [message(code: 'pessoa.label', default: 'Pessoa')])}
						</g:link>
					</li>
				</div>
			</g:if>
		</div>

	</div>
</g:if>
<g:if test="${!'create'.equals(actionName)}">
	<div class="form-group fieldcontain ${hasErrors(bean: grupoCaseiro, field: 'setor', 'error')} required">
		<label for="setor" class="col-sm-2 control-label">
			<g:message code="grupoCaseiro.setor.label" default="Setor" />
			<span class="required-indicator">*</span>
		</label>
		<div class="col-sm-10">
			<g:select class="form-control" id="setor" name="setor.id" from="${sc.model.Setor.list()}" optionKey="id" required="" value="${grupoCaseiro?.setor?.id}" class="many-to-one" disabled="${'show'.equals(actionName)}"/>
		</div>

	</div>
</g:if>
<g:else>
	<g:select class="form-control" id="setor" name="setor.id" from="${sc.model.Setor.list()}" optionKey="id" required="" value="${grupoCaseiro?.setor?.id}" class="many-to-one" hidden=""/>
</g:else>