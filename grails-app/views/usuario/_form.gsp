<%@ page import="sc.acesso.Usuario" %>



<div class="form-group fieldcontain ${hasErrors(bean: usuarioInstance, field: 'login', 'error')} required">
	<label for="login" class="col-sm-2 control-label">
		<g:message code="usuario.login.label" default="Login" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:textField class="form-control" name="login" required="" value="${usuarioInstance?.login}" disabled="${'show'.equals(actionName)}"/>
	</div>

</div>

<g:if test="${actionName in ['create', 'edit']}">
	<div class="form-group fieldcontain ${hasErrors(bean: usuarioInstance, field: 'senha', 'error')} required">
		<label for="senha" class="col-sm-2 control-label">
			<g:message code="usuario.senha.label" default="Senha" />
			<span class="required-indicator">*</span>
		</label>
		<div class="col-sm-10">
			<g:passwordField class="form-control" name="senha" required="" value="${usuarioInstance?.senha}" disabled="${'show'.equals(actionName)}"/>
		</div>

	</div>
</g:if>

<div class="form-group fieldcontain ${hasErrors(bean: pessoaInstance, field: 'sangue', 'error')} required">
	<label for="tipo" class="col-sm-2 control-label">
		<g:message code="pessoa.tipo.label" default="Tipo" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:if test="${'show'.equals(actionName)}">
			<select class="form-control" id="tipo" name="tipo" disabled>
		</g:if>
		<g:else>
			<select class="form-control" id="tipo" name="tipo">
		</g:else>			
			<g:each in="${usuarioInstance.constraints.tipo.inList}">
				<option value="${it}">${it.capitalize()}</option>
			</g:each>
		</select>
	</div>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: usuarioInstance, field: 'pessoa', 'error')} ">
	<label for="pessoa" class="col-sm-2 control-label">
		<g:message code="usuario.pessoa.label" default="Pessoa" />
		
	</label>
	<div class="col-sm-10">
		<g:if test="${'show'.equals(actionName)}">
			<select class="many-to-one form-control" id="pessoa" name="pessoa.id" disabled>
		</g:if>
		<g:else>
			<select class="many-to-one form-control" id="pessoa" name="pessoa.id">
		</g:else>
			<option value="">Nenhum</option>
			<g:each in="${sc.model.Pessoa?.list()}">
				<option value="${it.id}" >${it.nome}</option>
			</g:each>

		</select>
	</div>

</div>


