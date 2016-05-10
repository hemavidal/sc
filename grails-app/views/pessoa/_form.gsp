<%@ page import="sc.model.Pessoa" %>

<div class="form-group ${hasErrors(bean: pessoa, field: 'nome', 'error')} required">
	<label for="nome" class="col-sm-2 control-label">
		<g:message code="pessoa.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:textField class="form-control" name="nome" required="" value="${pessoa?.nome}" disabled="${'show'.equals(actionName)}"/>
	</div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: pessoa, field: 'apelido', 'error')} ">
	<label for="apelido" class="col-sm-2 control-label">
		<g:message code="pessoa.apelido.label" default="Apelido" />
	</label>
	<div class="col-sm-10">
		<g:textField class="form-control" name="apelido" value="${pessoa?.apelido}" disabled="${'show'.equals(actionName)}"/>
	</div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: pessoa, field: 'estadoCivil', 'error')} required">
	<label for="estadoCivil" class="col-sm-2 control-label">
		<g:message code="pessoa.estadoCivil.label" default="Estado Civil" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:select class="form-control" name="estadoCivil" from="${sc.EstadoCivil?.values()}" keys="${sc.EstadoCivil.values()*.name()}" required="" value="${pessoa?.estadoCivil?.name()}"  disabled="${'show'.equals(actionName)}"/>
	</div>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: pessoa, field: 'sexo', 'error')} required">
	<label for="sexo" class="col-sm-2 control-label">
		<g:message code="pessoa.sexo.label" default="Sexo" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:select class="form-control" name="sexo" from="${sc.Sexo?.values()}" keys="${sc.Sexo.values()*.name()}" required="" value="${pessoa?.sexo?.name()}"  disabled="${'show'.equals(actionName)}"/>
	</div>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: pessoa, field: 'email', 'error')}">
	<label for="email" class="col-sm-2 control-label">
		<g:message code="pessoa.email.label" default="Email" />
	</label>
	<div class="col-sm-10">
		<g:textField class="form-control" name="email" value="${pessoa?.email}" disabled="${'show'.equals(actionName)}"/>
	</div>
</div>

<fieldset class="embedded"><legend><g:message code="pessoa.endereco.label" default="Endereco" /></legend>

<div class="form-group fieldcontain ${hasErrors(bean: pessoa, field: 'endereco.estado', 'error')}">
	<label for="endereco.estado" class="col-sm-2 control-label">
		<g:message code="pessoa.estado.label" default="Estado" />
	</label>
	<div class="col-sm-10">
		<g:textField class="form-control" name="endereco.estado" value="${pessoa?.endereco?.estado}" disabled="${'show'.equals(actionName)}"/>
	</div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: pessoa, field: 'endereco.cidade', 'error')}">
	<label for="endereco.cidade" class="col-sm-2 control-label">
		<g:message code="pessoa.cidade.label" default="Cidade" />
	</label>
	<div class="col-sm-10">
		<g:textField class="form-control" name="endereco.cidade" value="${pessoa?.endereco?.cidade}" disabled="${'show'.equals(actionName)}"/>
	</div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: pessoa, field: 'endereco.bairro', 'error')} ">
	<label for="endereco.bairro" class="col-sm-2 control-label">
		<g:message code="pessoa.endereco.bairro.label" default="Bairro" />
	</label>
	<div class="col-sm-10">
		<g:textField class="form-control" name="endereco.bairro" value="${pessoa?.endereco?.bairro}" disabled="${'show'.equals(actionName)}"/>
	</div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: pessoa, field: 'endereco.rua', 'error')}">
	<label for="endereco.rua" class="col-sm-2 control-label">
		<g:message code="pessoa.endereco.rua.label" default="Rua" />
	</label>
	<div class="col-sm-10">
		<g:textField class="form-control" name="endereco.rua" value="${pessoa?.endereco?.rua}" disabled="${'show'.equals(actionName)}"/>
	</div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: pessoa, field: 'endereco.numero', 'error')} ">
	<label for="endereco.numero" class="col-sm-2 control-label">
		<g:message code="pessoa.endereco.numero.label" default="Numero" />
	</label>
	<div class="col-sm-10">
		<g:field class="form-control" name="endereco.numero" type="number" value="${pessoa?.endereco?.numero}"  disabled="${'show'.equals(actionName)}"/>
	</div>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: pessoa, field: 'endereco.complemento', 'error')}">
	<label for="endereco.complemento" class="col-sm-2 control-label">
		<g:message code="pessoa.endereco.complemento.label" default="Complemento" />
	</label>
	<div class="col-sm-10">
		<g:textField class="form-control" name="endereco.complemento" value="${pessoa?.endereco?.complemento}" disabled="${'show'.equals(actionName)}"/>
	</div>
</div>
</fieldset>

<div class="form-group fieldcontain ${hasErrors(bean: pessoa, field: 'integracao', 'error')} required">
	<label for="integracao" class="col-sm-2 control-label">
		<g:message code="pessoa.integracao.label" default="Integracao" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:datePicker class="form-control" name="integracao" precision="day"  value="${pessoa?.integracao}"   disabled="${'show'.equals(actionName)}"/>
	</div>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: pessoa, field: 'nascimento', 'error')} required">
	<label for="nascimento" class="col-sm-2 control-label">
		<g:message code="pessoa.nascimento.label" default="Nascimento" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:datePicker class="form-control" name="nascimento" precision="day"  value="${pessoa?.nascimento}"   disabled="${'show'.equals(actionName)}"/>
	</div>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: pessoa, field: 'profissao', 'error')}">
	<label for="profissao" class="col-sm-2 control-label">
		<g:message code="pessoa.profissao.label" default="Profissao" />
	</label>
	<div class="col-sm-10">
		<select class="many-to-one form-control" id="profissao" name="profissao.id" ${'show'.equals(actionName) ? 'disabled' : ''}>
			<option value="" >Nenhuma</option>
			<g:each in="${sc.model.Profissao?.list()}">
				<option value="${it.id}" ${pessoa.profissao?.id == it?.id ? 'selected' : ''}>${it.nome}</option>
			</g:each>

		</select>

		
	</div>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: pessoa, field: 'sangue', 'error')}">
	<label for="sangue" class="col-sm-2 control-label">
		<g:message code="pessoa.sangue.label" default="Sangue" />
	</label>
	<div class="col-sm-10">
		<select class="form-control" id="sangue" name="sangue" ${'show'.equals(actionName) ? 'disabled' : ''}>
			<option value=""></option>
			<g:each in="${sc.Sangue?.values()}">
				<option value="${it.name()}" ${pessoa.sangue == it ? 'selected' : ''}>${it.getNome()}</option>
			</g:each>
		</select>
	</div>

</div>

<g:if test="${session.user.isAdmin}">
	<fieldset class="embedded"><legend><g:message code="outrasOpcoes.label" default="Outras Opções" /></legend>
		<div class="form-group fieldcontain ${hasErrors(bean: pessoa, field: 'grupoCaseiro', 'error')}">
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
						<option value="${it.id}" ${pessoa?.grupoCaseiro?.id == it?.id ? 'selected' : ''}>${it.nome}</option>
					</g:each>

				</select>

			</div>

		</div>
	
		<div class="form-group fieldcontain ${hasErrors(bean: pessoa, field: 'companheiro', 'error')}">
			<label for="companheiro" class="col-sm-2 control-label">
				<g:message code="pessoa.companheiro.label" default="Companheiro" />		
			</label>
			<div class="col-sm-10">
				<select class="many-to-one form-control" id="companheiro" name="companheiro.id" ${'show'.equals(actionName) ? 'disabled' : ''}>
					<option value="" >Nenhum</option>
					<g:each in="${sc.model.Pessoa?.list()}">
						<option value="${it.id}" ${pessoa.companheiro?.id == it?.id ? 'selected' : ''}>${it.nome}</option>
					</g:each>

				</select>
			</div>
		</div>

		<div class="form-group fieldcontain ${hasErrors(bean: pessoa, field: 'discipulador', 'error')}">
			<label for="discipulador" class="col-sm-2 control-label">
				<g:message code="pessoa.discipulador.label" default="Discipulador" />
			</label>
			<div class="col-sm-10">
				<select class="many-to-one form-control" id="discipulador" name="discipulador.id" ${'show'.equals(actionName) ? 'disabled' : ''}>
					<option value="" >Nenhum</option>
					<g:each in="${sc.model.Pessoa?.list()}">
						<option value="${it.id}" ${pessoa.discipulador?.id == it?.id ? 'selected' : ''}>${it.nome}</option>
					</g:each>

				</select>
			</div>
		</div>

		<div class="form-group fieldcontain ${hasErrors(bean: pessoa, field: 'nivelDeCrescimento', 'error')} required">
			<label for="nivelDeCrescimento" class="col-sm-2 control-label">
				<g:message code="pessoa.nivelDeCrescimento.label" default="Nivel De Crescimento" />
				<span class="required-indicator">*</span>
			</label>
			<div class="col-sm-10">
				<g:select class="form-control" name="nivelDeCrescimento" from="${sc.NivelDeCrescimento?.values()}" keys="${sc.NivelDeCrescimento.values()*.name()}" required="" value="${pessoa?.nivelDeCrescimento?.name()}"  disabled="${'show'.equals(actionName)}"/>
			</div>

		</div>

		<div class="form-group fieldcontain ${hasErrors(bean: pessoa, field: 'procedencia', 'error')} required">
			<label for="procedencia" class="col-sm-2 control-label">
				<g:message code="pessoa.procedencia.label" default="Procedencia" />
				<span class="required-indicator">*</span>
			</label>
			<div class="col-sm-10">
				<g:select class="form-control" name="procedencia" from="${sc.Procedencia?.values()}" keys="${sc.Procedencia.values()*.name()}" required="" value="${pessoa?.procedencia?.name()}"  disabled="${'show'.equals(actionName)}"/>
			</div>

		</div>

		<div class="form-group fieldcontain ${hasErrors(bean: pessoa, field: 'batizado', 'error')}">
			<label for="batizado" class="col-sm-2 control-label">
				<g:message code="pessoa.batizado.label" default="Batizado" />
			</label>
			<div class="col-sm-10">
				<div class="checkbox">
					<label>
						<g:checkBox name="batizado" value="${pessoa?.batizado}" disabled="${'show'.equals(actionName)}"/>
					</label>
				</div>

			</div>

		</div>

		<div class="form-group fieldcontain ${hasErrors(bean: pessoa, field: 'situacao', 'error')} required">
			<label for="situacao" class="col-sm-2 control-label">
				<g:message code="pessoa.situacao.label" default="Situação" />
			</label>
			<div class="col-sm-10">
				<g:select class="form-control" name="situacao" from="${sc.Situacao?.values()}" keys="${sc.Situacao.values()*.name()}" required="" value="${pessoa?.situacao?.name()}"  disabled="${'show'.equals(actionName)}"/>
			</div>

		</div>


	</fieldset>
</g:if>

