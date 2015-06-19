<%@ page import="sc.model.Pessoa" %>



<div class=" form-group ${hasErrors(bean: pessoaInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="pessoa.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${pessoaInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'apelido', 'error')} required">
	<label for="apelido">
		<g:message code="pessoa.apelido.label" default="Apelido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apelido" required="" value="${pessoaInstance?.apelido}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'nivelDeCrescimento', 'error')} required">
	<label for="nivelDeCrescimento">
		<g:message code="pessoa.nivelDeCrescimento.label" default="Nivel De Crescimento" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="nivelDeCrescimento" from="${sc.NivelDeCrescimento?.values()}" keys="${sc.NivelDeCrescimento.values()*.name()}" required="" value="${pessoaInstance?.nivelDeCrescimento?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'estadoCivil', 'error')} required">
	<label for="estadoCivil">
		<g:message code="pessoa.estadoCivil.label" default="Estado Civil" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="estadoCivil" from="${sc.EstadoCivil?.values()}" keys="${sc.EstadoCivil.values()*.name()}" required="" value="${pessoaInstance?.estadoCivil?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'sexo', 'error')} required">
	<label for="sexo">
		<g:message code="pessoa.sexo.label" default="Sexo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="sexo" from="${sc.Sexo?.values()}" keys="${sc.Sexo.values()*.name()}" required="" value="${pessoaInstance?.sexo?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'procedencia', 'error')} required">
	<label for="procedencia">
		<g:message code="pessoa.procedencia.label" default="Procedencia" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="procedencia" from="${sc.Procedencia?.values()}" keys="${sc.Procedencia.values()*.name()}" required="" value="${pessoaInstance?.procedencia?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'cidade', 'error')} required">
	<label for="cidade">
		<g:message code="pessoa.cidade.label" default="Cidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cidade" required="" value="${pessoaInstance?.cidade}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'companheiro', 'error')}">
	<label for="companheiro">
		<g:message code="pessoa.companheiro.label" default="Companheiro" />		
	</label>
	<g:select id="companheiro" name="companheiro.id" from="${sc.model.Pessoa.list()}" optionKey="id" value="${pessoaInstance?.companheiro?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'discipulador', 'error')}">
	<label for="discipulador">
		<g:message code="pessoa.discipulador.label" default="Discipulador" />
	</label>
	<g:select id="discipulador" name="discipulador.id" from="${sc.model.Pessoa.list()}" optionKey="id" value="${pessoaInstance?.discipulador?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'email', 'error')}">
	<label for="email">
		<g:message code="pessoa.email.label" default="Email" />
	</label>
	<g:textField name="email" value="${pessoaInstance?.email}"/>

</div>
<fieldset class="embedded"><legend><g:message code="pessoa.endereco.label" default="Endereco" /></legend>
<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'endereco.bairro', 'error')} ">
	<label for="endereco.bairro">
		<g:message code="pessoa.endereco.bairro.label" default="Bairro" />
	</label>
	<g:textField name="bairro" value="${enderecoInstance?.bairro}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'endereco.complemento', 'error')}">
	<label for="endereco.complemento">
		<g:message code="pessoa.endereco.complemento.label" default="Complemento" />
	</label>
	<g:textField name="complemento" value="${enderecoInstance?.complemento}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'endereco.numero', 'error')} ">
	<label for="endereco.numero">
		<g:message code="pessoa.endereco.numero.label" default="Numero" />
	</label>
	<g:field name="numero" type="number" value="${enderecoInstance?.numero}" />

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'endereco.rua', 'error')}">
	<label for="endereco.rua">
		<g:message code="pessoa.endereco.rua.label" default="Rua" />
	</label>
	<g:textField name="rua" value="${enderecoInstance?.rua}"/>

</div>
</fieldset>
<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'estado', 'error')} required">
	<label for="estado">
		<g:message code="pessoa.estado.label" default="Estado" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="estado" required="" value="${pessoaInstance?.estado}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'integracao', 'error')} required">
	<label for="integracao">
		<g:message code="pessoa.integracao.label" default="Integracao" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="integracao" precision="day"  value="${pessoaInstance?.integracao}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'nascimento', 'error')} required">
	<label for="nascimento">
		<g:message code="pessoa.nascimento.label" default="Nascimento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="nascimento" precision="day"  value="${pessoaInstance?.nascimento}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'profissao', 'error')}">
	<label for="profissao">
		<g:message code="pessoa.profissao.label" default="Profissao" />
	</label>
	<g:select id="profissao" name="profissao.id" from="${sc.model.Profissao.list()}" optionKey="id" value="${pessoaInstance?.profissao?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'sangue', 'error')} required">
	<label for="sangue">
		<g:message code="pessoa.sangue.label" default="Sangue" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="sangue" from="${sc.Sangue?.values()}" keys="${sc.Sangue.values()*.name()}" required="" value="${pessoaInstance?.sangue?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'grupoCaseiro', 'error')}">
	<label for="grupoCaseiro">
		<g:message code="pessoa.grupoCaseiro.label" default="Grupo Caseiro" />
	</label>
	<g:select id="grupoCaseiro" name="grupoCaseiro.id" from="${sc.model.GrupoCaseiro.list()}" optionKey="id" value="${pessoaInstance?.grupoCaseiro?.id}" class="many-to-one"/>

</div>