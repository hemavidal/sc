<%@ page import="sc.model.Setor" %>



<div class="form-group fieldcontain ${hasErrors(bean: setorInstance, field: 'nome', 'error')} required">
	<label for="nome" class="col-sm-2 control-label">
		<g:message code="setor.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:textField class="form-control" name="nome" required="" value="${setorInstance?.nome}" disabled="${'show'.equals(actionName)}"/>
	</div>

</div>

<g:if test="${!'create'.equals(actionName)}">
	<div class="form-group fieldcontain ${hasErrors(bean: setorInstance, field: 'gruposCaseiros', 'error')} ">
		<label for="gruposCaseiros" class="col-sm-2 control-label">
			<g:message code="setor.gruposCaseiros.label" default="Grupos Caseiros" />
			
		</label>
		
		<div class="col-sm-10">	
			
				<table class="table table-bordered">
					<thead>
						<tr>
						
							<g:sortableColumn property="nome" title="${message(code: 'grupocaseiro.nome.label', default: 'Grupo Caseiro')}" />
						
						</tr>
					</thead>
					<tbody>
					<g:each in="${setorInstance.gruposCaseiros}" status="i" var="grupoCaseiroInstance">
						<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
							<td><g:link controller="grupoCaseiro" action="show" id="${grupoCaseiroInstance.id}">${fieldValue(bean: grupoCaseiroInstance, field: "nome")}</g:link></td>
						
						</tr>
					</g:each>
					</tbody>
				</table>
				<div class="pagination">
					<g:paginate total="${setorInstance.gruposCaseiros?.size() ?: 0}" />
				</div>

				
				<g:if test="${!'show'.equals(actionName)}">
					<div class="col-sm-10">
						<li class="add">
							<g:link class="btn btn-default" controller="grupoCaseiro" action="create" params="['setor.id': setorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'grupocaseiro.label', default: 'Grupo Caseiro')])}
							</g:link>
						</li>
					</div>
				</g:if>
			
		</div>

	</div>
</g:if>

<g:if test="${actionName in ['create', 'edit']}">
	<div class="form-group fieldcontain ${hasErrors(bean: setorInstance, field: 'igreja', 'error')} required">
		<label for="igreja" class="col-sm-2 control-label">
			<g:message code="setor.igreja.label" default="Igreja" />
			<span class="required-indicator">*</span>
		</label>

		
			<div class="col-sm-10">
				<g:select class="form-control" id="igreja" name="igreja.id" from="${sc.model.Igreja.list()}" optionKey="id" required="" value="${setorInstance?.igreja?.id}" class="many-to-one"/>
			</div>

	</div>
</g:if>

