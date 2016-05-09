<%@ page import="sc.acesso.Usuario" %>
<%@ page import="sc.model.Igreja" %>
<%@ page import="sc.model.Setor" %>
<%@ page import="sc.model.GrupoCaseiro" %>

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
