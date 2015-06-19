<%@ page import="sc.model.GrupoCaseiro" %>



<div class="fieldcontain ${hasErrors(bean: grupoCaseiroInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="grupoCaseiro.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${grupoCaseiroInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: grupoCaseiroInstance, field: 'pessoas', 'error')} ">
	<label for="pessoas">
		<g:message code="grupoCaseiro.pessoas.label" default="Pessoas" />
		
	</label>
	<g:select name="pessoas" from="${sc.model.Pessoa.list()}" multiple="multiple" optionKey="id" size="5" value="${grupoCaseiroInstance?.pessoas*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: grupoCaseiroInstance, field: 'setor', 'error')} required">
	<label for="setor">
		<g:message code="grupoCaseiro.setor.label" default="Setor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="setor" name="setor.id" from="${sc.model.Setor.list()}" optionKey="id" required="" value="${grupoCaseiroInstance?.setor?.id}" class="many-to-one"/>

</div>

