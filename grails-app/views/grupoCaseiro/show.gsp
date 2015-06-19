
<%@ page import="sc.model.GrupoCaseiro" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'grupoCaseiro.label', default: 'GrupoCaseiro')}" />
		<g:set var="pessoaLabel" value="${message(code: 'pessoa.label', default: 'Pessoa')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-grupoCaseiro" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" controller="pessoa" action="create" params="[grupoCaseiro:grupoCaseiroInstance.id]"><g:message code="default.new.label" args="[pessoaLabel]" /></g:link></li>
			</ul>
		</div>
		<div id="show-grupoCaseiro" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list grupoCaseiro">
			
				<g:if test="${grupoCaseiroInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="grupoCaseiro.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${grupoCaseiroInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${grupoCaseiroInstance?.pessoas}">
				<li class="fieldcontain">
					<span id="pessoas-label" class="property-label"><g:message code="grupoCaseiro.pessoas.label" default="Pessoas" /></span>
					
						<g:each in="${grupoCaseiroInstance.pessoas}" var="p">
						<span class="property-value" aria-labelledby="pessoas-label"><g:link controller="pessoa" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${grupoCaseiroInstance?.setor}">
				<li class="fieldcontain">
					<span id="setor-label" class="property-label"><g:message code="grupoCaseiro.setor.label" default="Setor" /></span>
					
						<span class="property-value" aria-labelledby="setor-label"><g:link controller="setor" action="show" id="${grupoCaseiroInstance?.setor?.id}">${grupoCaseiroInstance?.setor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<h1><g:message code="pessoa.label" default="Pessoas" /></h1>
			<table>
			<thead>
					<tr>
										
						<g:sortableColumn property="apelido" title="${message(code: 'pessoa.apelido.label', default: 'Apelido')}" />

						<g:sortableColumn property="telefones" title="${message(code: 'pessoa.telefones.label', default: 'Telefones')}" />

						<g:sortableColumn property="discipulador" title="${message(code: 'pessoa.discipulador.label', default: 'Discipulador')}" />

						<g:sortableColumn property="email" title="${message(code: 'pessoa.email.label', default: 'Email')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${grupoCaseiroInstance.pessoas}" status="i" var="pessoaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link controller="pessoa" action="show" id="${pessoaInstance.id}">${fieldValue(bean: pessoaInstance, field: "apelido")}</g:link></td>
					
						<td>${fieldValue(bean: pessoaInstance, field: "telefones")}</td>
					
						<td>${fieldValue(bean: pessoaInstance, field: "discipulador")}</td>
					
						<td>${fieldValue(bean: pessoaInstance, field: "email")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<g:form url="[resource:grupoCaseiroInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${grupoCaseiroInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
