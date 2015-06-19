<%@ page import="sc.acesso.Usuario" %>



<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'login', 'error')} required">
	<label for="login">
		<g:message code="usuario.login.label" default="Login" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="login" required="" value="${usuarioInstance?.login}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'senha', 'error')} required">
	<label for="senha">
		<g:message code="usuario.senha.label" default="Senha" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="senha" required="" value="${usuarioInstance?.senha}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'pessoa', 'error')} ">
	<label for="pessoa">
		<g:message code="usuario.pessoa.label" default="Pessoa" />
		
	</label>
	<g:select id="pessoa" name="pessoa.id" from="${sc.model.Pessoa.list()}" optionKey="id" value="${usuarioInstance?.pessoa?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

