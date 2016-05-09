<%@ page import="sc.model.Profissao" %>


<div class="form-group ${hasErrors(bean: profissao, field: 'nome', 'error')} required">
	<label for="cidade" class="col-sm-2 control-label">
		<g:message code="profissao.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:textField class="form-control" name="nome" required="" value="${profissao?.nome}" disabled="${'show'.equals(actionName)}"/>
	</div>

</div>
