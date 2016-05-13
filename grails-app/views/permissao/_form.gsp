<%@ page import="sc.acesso.Usuario" %>
<%@ page import="sc.model.Igreja" %>
<%@ page import="sc.model.Setor" %>
<%@ page import="sc.model.GrupoCaseiro" %>


<div class="form-group fieldcontain required">
	<label for="tipo" class="col-sm-2 control-label">
		<g:message code="pessoa.tipo.label" default="Tipo" />
		<span class="required-indicator">*</span>
	</label>
	<div class="row">
		<div class="col-md-2">
			<select class="form-control" id="tipo" name="tipo" ${'show'.equals(actionName) ? 'disabled' : ''}>
				<g:each in="${["Pessoa", "GrupoCaseiro", "Setor", "Igreja", "Admin"]}">
						<option value="${it}">${it.capitalize()}</option>
				</g:each>
			</select>

		</div>
		<div class="col-md-2">
			<select class="form-control" id="igrejas" name="igreja" ${'show'.equals(actionName) ? 'disabled' : ''}>
				<g:each in="${Igreja.list()}">
					<option value="${it.id}">${it.cidade}</option>
				</g:each>
			</select>
			
		</div>
		<div class="col-md-2">
			<select class="form-control" id="setores" name="setor" ${'show'.equals(actionName) ? 'disabled' : ''}>
				<g:each in="${Setor.list()}">
					<option value="${it.id}" data-igreja="${it.igreja.id}">${it.nome}</option>
				</g:each>
			</select>
			
		</div>
		<div class="col-md-2">
			<select class="form-control" id="gruposCaseiros" name="grupoCaseiro" ${'show'.equals(actionName) ? 'disabled' : ''}>
				<g:each in="${GrupoCaseiro.list()}">
					<option value="${it.id}" data-setor="${it.setor.id}">${it.nome}</option>
				</g:each>
			</select>
		</div>
	</div>
</div>

<g:if test="${session.user.isAdmin}">

	<div class="form-group fieldcontain ${hasErrors(bean: permissao, field: 'usuario', 'error')} ">
		<label for="pessoa" class="col-sm-2 control-label">
			<g:message code="usuario.label" default="Usuario" />
			
		</label>
		<div class="col-sm-10">
			<select class="many-to-one form-control" id="usuario" name="usuario" ${'show'.equals(actionName) ? 'disabled' : ''}>
				<option value="">Nenhum</option>
				<g:each in="${sc.acesso.Usuario.list()}">
					<option value="${it.id}" ${it.id == usuario?.id ? 'selected' : ''}>${it.login}</option>
				</g:each>

			</select>
		</div>

	</div>
</g:if>

<g:render template="init_dropbox_dependencies"/>