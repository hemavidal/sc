
<%@ page import="sc.model.Pessoa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pessoa.label', default: 'Pessoa')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-pessoa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link controller="grupoCaseiro" action="show" id="${pessoaInstance.grupoCaseiro?.id}"><g:message code="grupocaseiro.label" default="Grupo Caseiro ${" - " + pessoaInstance.grupoCaseiro}" /></g:link></li>
			</ul>
		</div>
		<div id="show-pessoa" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list pessoa">
			
				<g:if test="${pessoaInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="pessoa.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${pessoaInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pessoaInstance?.apelido}">
				<li class="fieldcontain">
					<span id="apelido-label" class="property-label"><g:message code="pessoa.apelido.label" default="Apelido" /></span>
					
						<span class="property-value" aria-labelledby="apelido-label"><g:fieldValue bean="${pessoaInstance}" field="apelido"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pessoaInstance?.nivelDeCrescimento}">
				<li class="fieldcontain">
					<span id="nivelDeCrescimento-label" class="property-label"><g:message code="pessoa.nivelDeCrescimento.label" default="Nivel De Crescimento" /></span>
					
						<span class="property-value" aria-labelledby="nivelDeCrescimento-label"><g:fieldValue bean="${pessoaInstance}" field="nivelDeCrescimento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pessoaInstance?.estadoCivil}">
				<li class="fieldcontain">
					<span id="estadoCivil-label" class="property-label"><g:message code="pessoa.estadoCivil.label" default="Estado Civil" /></span>
					
						<span class="property-value" aria-labelledby="estadoCivil-label"><g:fieldValue bean="${pessoaInstance}" field="estadoCivil"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pessoaInstance?.sexo}">
				<li class="fieldcontain">
					<span id="sexo-label" class="property-label"><g:message code="pessoa.sexo.label" default="Sexo" /></span>
					
						<span class="property-value" aria-labelledby="sexo-label"><g:fieldValue bean="${pessoaInstance}" field="sexo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pessoaInstance?.procedencia}">
				<li class="fieldcontain">
					<span id="procedencia-label" class="property-label"><g:message code="pessoa.procedencia.label" default="Procedencia" /></span>
					
						<span class="property-value" aria-labelledby="procedencia-label"><g:fieldValue bean="${pessoaInstance}" field="procedencia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pessoaInstance?.grupoCaseiro}">
				<li class="fieldcontain">
					<span id="grupoCaseiro-label" class="property-label"><g:message code="pessoa.grupoCaseiro.label" default="Grupo Caseiro" /></span>
					
						<span class="property-value" aria-labelledby="grupoCaseiro-label"><g:fieldValue bean="${pessoaInstance}" field="grupoCaseiro"/></span>
					
				</li>
				</g:if>

				<g:if test="${pessoaInstance?.cidade}">
				<li class="fieldcontain">
					<span id="cidade-label" class="property-label"><g:message code="pessoa.cidade.label" default="Cidade" /></span>
					
						<span class="property-value" aria-labelledby="cidade-label"><g:fieldValue bean="${pessoaInstance}" field="cidade"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pessoaInstance?.companheiro}">
				<li class="fieldcontain">
					<span id="companheiro-label" class="property-label"><g:message code="pessoa.companheiro.label" default="Companheiro" /></span>
					
						<span class="property-value" aria-labelledby="companheiro-label"><g:link controller="pessoa" action="show" id="${pessoaInstance?.companheiro?.id}">${pessoaInstance?.companheiro?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${pessoaInstance?.discipulador}">
				<li class="fieldcontain">
					<span id="discipulador-label" class="property-label"><g:message code="pessoa.discipulador.label" default="Discipulador" /></span>
					
						<span class="property-value" aria-labelledby="discipulador-label"><g:link controller="pessoa" action="show" id="${pessoaInstance?.discipulador?.id}">${pessoaInstance?.discipulador?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${pessoaInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="pessoa.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${pessoaInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pessoaInstance?.endereco}">
				<li class="fieldcontain">
					<span id="endereco-label" class="property-label"><g:message code="pessoa.endereco.label" default="Endereco" /></span>
					
						<span class="property-value" aria-labelledby="endereco-label"><g:fieldValue bean="${pessoaInstance}" field="endereco"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pessoaInstance?.estado}">
				<li class="fieldcontain">
					<span id="estado-label" class="property-label"><g:message code="pessoa.estado.label" default="Estado" /></span>
					
						<span class="property-value" aria-labelledby="estado-label"><g:fieldValue bean="${pessoaInstance}" field="estado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pessoaInstance?.integracao}">
				<li class="fieldcontain">
					<span id="integracao-label" class="property-label"><g:message code="pessoa.integracao.label" default="Integracao" /></span>
					
						<span class="property-value" aria-labelledby="integracao-label"><g:formatDate date="${pessoaInstance?.integracao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${pessoaInstance?.nascimento}">
				<li class="fieldcontain">
					<span id="nascimento-label" class="property-label"><g:message code="pessoa.nascimento.label" default="Nascimento" /></span>
					
						<span class="property-value" aria-labelledby="nascimento-label"><g:formatDate date="${pessoaInstance?.nascimento}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${pessoaInstance?.profissao}">
				<li class="fieldcontain">
					<span id="profissao-label" class="property-label"><g:message code="pessoa.profissao.label" default="Profissao" /></span>
					
						<span class="property-value" aria-labelledby="profissao-label"><g:link controller="profissao" action="show" id="${pessoaInstance?.profissao?.id}">${pessoaInstance?.profissao?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${pessoaInstance?.sangue}">
				<li class="fieldcontain">
					<span id="sangue-label" class="property-label"><g:message code="pessoa.sangue.label" default="Sangue" /></span>
					
						<span class="property-value" aria-labelledby="sangue-label"><g:fieldValue bean="${pessoaInstance}" field="sangue"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:pessoaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${pessoaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
