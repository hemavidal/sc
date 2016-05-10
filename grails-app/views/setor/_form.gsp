<%@ page import="sc.model.Setor" %>



<div class="form-group fieldcontain ${hasErrors(bean: setor, field: 'nome', 'error')} required">
	<label for="nome" class="col-sm-2 control-label">
		<g:message code="setor.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:textField class="form-control" name="nome" required="" value="${setor?.nome}" disabled="${'show'.equals(actionName)}"/>
	</div>

</div>

<g:if test="${!'create'.equals(actionName)}">
	<div class="form-group fieldcontain ${hasErrors(bean: setor, field: 'gruposCaseiros', 'error')} ">
		<label for="gruposCaseiros" class="col-sm-2 control-label">
			<g:message code="setor.gruposCaseiros.label" default="Grupos Caseiros" />
			
		</label>
		
		<div class="col-sm-10">	
			
			<table id="dataTables-example" class="table table-bordered">
				<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'grupocaseiro.nome.label', default: 'Grupo Caseiro')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${setor.gruposCaseiros}" status="i" var="grupoCaseiro">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link controller="grupoCaseiro" action="show" id="${grupoCaseiro.id}">${fieldValue(bean: grupoCaseiro, field: "nome")}</g:link></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${setor.gruposCaseiros?.size() ?: 0}" />
			</div>
			
		</div>

	</div>
</g:if>

<g:if test="${actionName in ['create', 'edit']}">
	<div class="form-group fieldcontain ${hasErrors(bean: setor, field: 'igreja', 'error')} required">
		<label for="igreja" class="col-sm-2 control-label">
			<g:message code="setor.igreja.label" default="Igreja" />
			<span class="required-indicator">*</span>
		</label>
			<div class="col-sm-10">
				<g:if test="${'show'.equals(actionName)}">
					<select class="form-control" id="igreja" name="igreja.id" disabled>
				</g:if>
				<g:else>
					<select class="many-to-one form-control" id="igreja" name="igreja.id">
				</g:else>			
					<g:each in="${sc.model.Igreja.list()}">
						<option value="${it.id}">${it.cidade}</option>
					</g:each>
				</select>
			</div>

	</div>
</g:if>

