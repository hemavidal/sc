<%@ page import="sc.model.Pessoa" %>



<div class="form-group ${hasErrors(bean: pessoaInstance, field: 'nome', 'error')} required">
	<label for="nome" class="col-sm-2 control-label">
		<g:message code="pessoa.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:textField class="form-control" name="nome" required="" value="${pessoaInstance?.nome}" disabled="${'show'.equals(actionName)}"/>
	</div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: pessoaInstance, field: 'apelido', 'error')} required">
	<label for="apelido" class="col-sm-2 control-label">
		<g:message code="pessoa.apelido.label" default="Apelido" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:textField class="form-control" name="apelido" required="" value="${pessoaInstance?.apelido}" disabled="${'show'.equals(actionName)}"/>
	</div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: pessoaInstance, field: 'nivelDeCrescimento', 'error')} required">
	<label for="nivelDeCrescimento" class="col-sm-2 control-label">
		<g:message code="pessoa.nivelDeCrescimento.label" default="Nivel De Crescimento" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:select class="form-control" name="nivelDeCrescimento" from="${sc.NivelDeCrescimento?.values()}" keys="${sc.NivelDeCrescimento.values()*.name()}" required="" value="${pessoaInstance?.nivelDeCrescimento?.name()}"  disabled="${'show'.equals(actionName)}"/>
	</div>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: pessoaInstance, field: 'estadoCivil', 'error')} required">
	<label for="estadoCivil" class="col-sm-2 control-label">
		<g:message code="pessoa.estadoCivil.label" default="Estado Civil" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:select class="form-control" name="estadoCivil" from="${sc.EstadoCivil?.values()}" keys="${sc.EstadoCivil.values()*.name()}" required="" value="${pessoaInstance?.estadoCivil?.name()}"  disabled="${'show'.equals(actionName)}"/>
	</div>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: pessoaInstance, field: 'sexo', 'error')} required">
	<label for="sexo" class="col-sm-2 control-label">
		<g:message code="pessoa.sexo.label" default="Sexo" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:select class="form-control" name="sexo" from="${sc.Sexo?.values()}" keys="${sc.Sexo.values()*.name()}" required="" value="${pessoaInstance?.sexo?.name()}"  disabled="${'show'.equals(actionName)}"/>
	</div>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: pessoaInstance, field: 'procedencia', 'error')} required">
	<label for="procedencia" class="col-sm-2 control-label">
		<g:message code="pessoa.procedencia.label" default="Procedencia" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:select class="form-control" name="procedencia" from="${sc.Procedencia?.values()}" keys="${sc.Procedencia.values()*.name()}" required="" value="${pessoaInstance?.procedencia?.name()}"  disabled="${'show'.equals(actionName)}"/>
	</div>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: pessoaInstance, field: 'cidade', 'error')} required">
	<label for="cidade" class="col-sm-2 control-label">
		<g:message code="pessoa.cidade.label" default="Cidade" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:textField class="form-control" name="cidade" required="" value="${pessoaInstance?.cidade}" disabled="${'show'.equals(actionName)}"/>
	</div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: pessoaInstance, field: 'companheiro', 'error')}">
	<label for="companheiro" class="col-sm-2 control-label">
		<g:message code="pessoa.companheiro.label" default="Companheiro" />		
	</label>
	<div class="col-sm-10">
		<g:if test="${'show'.equals(actionName)}">
			<select class="many-to-one form-control" id="companheiro" name="companheiro.id" disabled>
		</g:if>
		<g:else>
			<select class="many-to-one form-control" id="companheiro" name="companheiro.id">
		</g:else>
			<g:each in="${sc.model.Pessoa?.list()}">
				<option value="${it.id}" >${it.nome}</option>
			</g:each>

		</select>

	</div>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: pessoaInstance, field: 'discipulador', 'error')}">
	<label for="discipulador" class="col-sm-2 control-label">
		<g:message code="pessoa.discipulador.label" default="Discipulador" />
	</label>
	<div class="col-sm-10">
		<g:if test="${'show'.equals(actionName)}">
			<select class="many-to-one form-control" id="discipulador" name="discipulador.id" disabled>
		</g:if>
		<g:else>
			<select class="many-to-one form-control" id="discipulador" name="discipulador.id">
		</g:else>		

			<g:each in="${sc.model.Pessoa?.list()}">
				<option value="${it.id}" >${it.nome}</option>
			</g:each>

		</select>
	</div>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: pessoaInstance, field: 'email', 'error')}">
	<label for="email" class="col-sm-2 control-label">
		<g:message code="pessoa.email.label" default="Email" />
	</label>
	<div class="col-sm-10">
		<g:textField class="form-control" name="email" value="${pessoaInstance?.email}" disabled="${'show'.equals(actionName)}"/>
	</div>
</div>
<fieldset class="embedded"><legend><g:message code="pessoa.endereco.label" default="Endereco" /></legend>
<div class="form-group fieldcontain ${hasErrors(bean: pessoaInstance, field: 'endereco.bairro', 'error')} ">
	<label for="endereco.bairro" class="col-sm-2 control-label">
		<g:message code="pessoa.endereco.bairro.label" default="Bairro" />
	</label>
	<div class="col-sm-10">
		<g:textField class="form-control" name="bairro" value="${enderecoInstance?.bairro}" disabled="${'show'.equals(actionName)}"/>
	</div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: pessoaInstance, field: 'endereco.complemento', 'error')}">
	<label for="endereco.complemento" class="col-sm-2 control-label">
		<g:message code="pessoa.endereco.complemento.label" default="Complemento" />
	</label>
	<div class="col-sm-10">
		<g:textField class="form-control" name="complemento" value="${enderecoInstance?.complemento}" disabled="${'show'.equals(actionName)}"/>
	</div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: pessoaInstance, field: 'endereco.numero', 'error')} ">
	<label for="endereco.numero" class="col-sm-2 control-label">
		<g:message code="pessoa.endereco.numero.label" default="Numero" />
	</label>
	<div class="col-sm-10">
		<g:field class="form-control" name="numero" type="number" value="${enderecoInstance?.numero}"  disabled="${'show'.equals(actionName)}"/>
	</div>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: pessoaInstance, field: 'endereco.rua', 'error')}">
	<label for="endereco.rua" class="col-sm-2 control-label">
		<g:message code="pessoa.endereco.rua.label" default="Rua" />
	</label>
	<div class="col-sm-10">
		<g:textField class="form-control" name="rua" value="${enderecoInstance?.rua}" disabled="${'show'.equals(actionName)}"/>
	</div>
</div>
</fieldset>
<div class="form-group fieldcontain ${hasErrors(bean: pessoaInstance, field: 'estado', 'error')} required">
	<label for="estado" class="col-sm-2 control-label">
		<g:message code="pessoa.estado.label" default="Estado" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:textField class="form-control" name="estado" required="" value="${pessoaInstance?.estado}" disabled="${'show'.equals(actionName)}"/>
	</div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: pessoaInstance, field: 'integracao', 'error')} required">
	<label for="integracao" class="col-sm-2 control-label">
		<g:message code="pessoa.integracao.label" default="Integracao" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:datePicker class="form-control" name="integracao" precision="day"  value="${pessoaInstance?.integracao}"   disabled="${'show'.equals(actionName)}"/>
	</div>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: pessoaInstance, field: 'nascimento', 'error')} required">
	<label for="nascimento" class="col-sm-2 control-label">
		<g:message code="pessoa.nascimento.label" default="Nascimento" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:datePicker class="form-control" name="nascimento" precision="day"  value="${pessoaInstance?.nascimento}"   disabled="${'show'.equals(actionName)}"/>
	</div>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: pessoaInstance, field: 'profissao', 'error')}">
	<label for="profissao" class="col-sm-2 control-label">
		<g:message code="pessoa.profissao.label" default="Profissao" />
	</label>
	<div class="col-sm-10">
		<g:select class="form-control" id="profissao" name="profissao.id" from="${sc.model.Profissao.list()}" optionKey="id" value="${pessoaInstance?.profissao?.id}" class="many-to-one" disabled="${'show'.equals(actionName)}"/>
	</div>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: pessoaInstance, field: 'sangue', 'error')} required">
	<label for="sangue" class="col-sm-2 control-label">
		<g:message code="pessoa.sangue.label" default="Sangue" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:if test="${'show'.equals(actionName)}">
			<select class="form-control" id="sangue" name="sangue" disabled>
		</g:if>
		<g:else>
			<select class="form-control" id="sangue" name="sangue">
		</g:else>
			<g:each in="${sc.Sangue?.values()}">
				<option value="${it.name()}">${it.getNome()}</option>
			</g:each>
		</select>
	</div>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: pessoaInstance, field: 'grupoCaseiro', 'error')}">
	<label for="grupoCaseiro" class="col-sm-2 control-label">
		<g:message code="pessoa.grupoCaseiro.label" default="Grupo Caseiro" />
	</label>
	<div class="col-sm-10">
		<g:if test="${'show'.equals(actionName)}">
			<select class="one-to-one form-control" id="grupoCaseiro" name="grupoCaseiro.id" disabled>
		</g:if>
		<g:else>
			<select class="one-to-one form-control" id="grupoCaseiro" name="grupoCaseiro.id">
		</g:else>
			<g:each in="${sc.model.GrupoCaseiro?.list()}">
				<option value="${it.id}" >${it.nome}</option>
			</g:each>

		</select>

	</div>

</div>