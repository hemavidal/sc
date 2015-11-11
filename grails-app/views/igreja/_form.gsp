<%@ page import="sc.model.Igreja" %>



<div class="form-group ${hasErrors(bean: igreja, field: 'cidade', 'error')} required">
	<label for="cidade" class="col-sm-2 control-label">
		<g:message code="igreja.cidade.label" default="Cidade" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:textField class="form-control" name="cidade" required="" value="${igreja?.cidade}" disabled="${'show'.equals(actionName)}"/>
	</div>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: igreja, field: 'estado', 'error')} required">
	<label for="estado" class="col-sm-2 control-label">
		<g:message code="igreja.estado.label" default="Estado" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:textField class="form-control" name="estado" required="" value="${igreja?.estado}" disabled="${'show'.equals(actionName)}"/>
	</div>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: igreja, field: 'pais', 'error')} required">
	<label for="pais" class="col-sm-2 control-label">
		<g:message code="igreja.pais.label" default="Pais" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:textField class="form-control" name="pais" required="" value="${igreja?.pais}" disabled="${'show'.equals(actionName)}"/>
	</div>

</div>

<g:if test="${!'create'.equals(actionName)}">
	<div class="form-group fieldcontain ${hasErrors(bean: igreja, field: 'setores', 'error')} ">
		<label for="setores" class="col-sm-2 control-label">
			<g:message code="igreja.setores.label" default="Setores" />
			
		</label>


		<div class="col-sm-10">	
			
				<table class="table table-bordered">
					<thead>
						<tr>
						
							<g:sortableColumn property="nome" title="${message(code: 'setor.nome.label', default: 'Nome')}" />
						
						</tr>
					</thead>
					<tbody>
					<g:each in="${igreja?.setores}" status="i" var="setor">
						<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
							<td><g:link controller="setor" action="show" id="${setor.id}">${fieldValue(bean: setor, field: "nome")}</g:link></td>
						
						</tr>
					</g:each>
					</tbody>
				</table>
				<div class="pagination">
					<g:paginate total="${igreja?.setores?.size() ?: 0}" />
				</div>

				
				<g:if test="${!'show'.equals(actionName)}">
					<div class="col-sm-10">
						<li class="add">
							<g:link class="btn btn-default" controller="setor" action="create" params="['igreja.id': igreja?.id]">${message(code: 'default.add.label', args: [message(code: 'setor.label', default: 'Setor')])}
							</g:link>
						</li>
					</div>
				</g:if>
			
		</div>

	</div>

	<div class="dataTable_wrapper">
                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                    <thead>
                        <tr>
                            <th>${message(code: 'usuarios.label', default: 'Usuarios')}</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                        
                        <g:each in="${igreja.usuarios}" status="i" var="usuario">
                            <tr class="odd gradeX  ${(i % 2) == 0 ? 'even' : 'odd'}">
                            
                                <td><g:link controller="usuario" action="show" id="${usuario.id}">${fieldValue(bean: usuario, field: "login")}</g:link></td>
                            
                            </tr>
                        </g:each>
                    </tbody>
                </table>
            </div>
            <!-- /.table-responsive -->
</g:if>