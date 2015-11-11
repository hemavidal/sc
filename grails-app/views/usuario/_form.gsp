<%@ page import="sc.acesso.Usuario" %>

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
	<div class="col-sm-10">
		<select class="form-control" id="tipo" name="tipo" ${'show'.equals(actionName) ? 'disabled' : ''}>
			<g:each in="${["admin", "igreja", "setor", "grupoCaseiro", "pessoa"]}">
				<option value="${it}">${it.capitalize()}</option>
			</g:each>
		</select>
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
