<%@ page import="sc.acesso.Usuario" %>
<%@ page import="sc.model.Igreja" %>
<%@ page import="sc.model.Setor" %>
<%@ page import="sc.model.GrupoCaseiro" %>

<p id="extra-data" data-actionName="${actionName}" data-igreja="${usuario.igreja?.id}" data-setor="${usuario.setor?.id}" data-grupoCaseiro="${usuario.grupoCaseiro?.id}" hidden="true"></p>

<div class="form-group fieldcontain ${hasErrors(bean: usuario, field: 'login', 'error')} required">
	<label for="login" class="col-sm-2 control-label">
		<g:message code="usuario.login.label" default="Login" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:textField class="form-control" name="login" required="" value="${usuario?.login}" disabled="${'show'.equals(actionName)}"/>
	</div>

</div>

<g:if test="${actionName in ['create', 'edit']}">
	<div class="form-group fieldcontain ${hasErrors(bean: usuario, field: 'senha', 'error')} required">
		<label for="senha" class="col-sm-2 control-label">
			<g:message code="usuario.senha.label" default="Senha" />
			<span class="required-indicator">*</span>
		</label>
		<div class="col-sm-10">
			<g:if test="${'create'.equals(actionName)}">
				<g:passwordField class="form-control" name="senha" required="" value=""/>
			</g:if>
			<g:else>
				<g:passwordField class="form-control" name="senha" value=""/>
			</g:else>
		</div>

	</div>
</g:if>

<div class="form-group fieldcontain ${hasErrors(bean: usuario, field: 'tipo', 'error')} required">
	<label for="tipo" class="col-sm-2 control-label">
		<g:message code="pessoa.tipo.label" default="Tipo" />
		<span class="required-indicator">*</span>
	</label>
	<div class="row">
		<div class="col-md-2">
			<select class="form-control" id="tipo" name="tipo" ${'show'.equals(actionName) ? 'disabled' : ''}>
				<g:each in="${["admin", "igreja", "setor", "grupoCaseiro", "pessoa"]}">
					<option value="${it}" ${it == usuario.tipo ? 'selected' : ''}>${it.capitalize()}</option>
				</g:each>
			</select>

		</div>
		<div class="col-md-2">
			<select class="form-control" id="igrejas" name="igreja" ${'show'.equals(actionName) ? 'disabled' : ''} ${!(usuario.tipo in ['igreja', 'setor', 'grupoCaseiro']) ? 'hidden' : ''}>
				<g:each in="${Igreja.list()}">
					<option value="${it.id}" ${it.id == usuario.igreja?.id ? 'selected' : ''}>${it.cidade}</option>
				</g:each>
			</select>
			
		</div>
		<div class="col-md-2">
			<select class="form-control" id="setores" name="setor" ${'show'.equals(actionName) ? 'disabled' : ''} ${!(usuario.tipo in ['setor', 'grupoCaseiro']) ? 'hidden' : ''}>
				<g:each in="${Setor.list()}">
					<option value="${it.id}" data-igreja="${it.igreja.id}" ${it.id == usuario.setor?.id ? 'selected' : ''}>${it.nome}</option>
				</g:each>
			</select>
			
		</div>
		<div class="col-md-2">
			<select class="form-control" id="gruposCaseiros" name="grupoCaseiro" ${'show'.equals(actionName) ? 'disabled' : ''} ${!(usuario.tipo in ['grupoCaseiro']) ? 'hidden' : ''}>
				<g:each in="${GrupoCaseiro.list()}">
					<option value="${it.id}" data-setor="${it.setor.id}" ${it.id == usuario.grupoCaseiro?.id ? 'selected' : ''}>${it.nome}</option>
				</g:each>
			</select>
			
		</div>
	</div>
</div>

<g:if test="session.user.tipo == 'admin'">

	<div class="form-group fieldcontain ${hasErrors(bean: usuario, field: 'pessoa', 'error')} ">
		<label for="pessoa" class="col-sm-2 control-label">
			<g:message code="usuario.pessoa.label" default="Pessoa" />
			
		</label>
		<div class="col-sm-10">
			<select class="many-to-one form-control" id="pessoa" name="pessoa.id" ${'show'.equals(actionName) ? 'disabled' : ''}>
				<option value="">Nenhum</option>
				<g:each in="${sc.model.Pessoa?.list()}">
					<option value="${it.id}" ${it.id == usuario?.pessoa?.id ? 'selected' : ''}>${it.nome}</option>
				</g:each>

			</select>
		</div>

	</div>
</g:if>
