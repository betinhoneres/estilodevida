<%@ page import="br.com.estilodevida.Pessoa" %>



<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="pessoa.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${pessoaInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'telefone', 'error')} required">
	<label for="telefone">
		<g:message code="pessoa.telefone.label" default="Telefone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefone" required="" value="${pessoaInstance?.telefone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'tipo', 'error')} required">
	<label for="tipo">
		<g:message code="pessoa.tipo.label" default="Tipo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tipo" from="${br.com.estilodevida.dominios.DmTipoPessoa?.values()}" keys="${br.com.estilodevida.dominios.DmTipoPessoa.values()*.name()}" required="" value="${pessoaInstance?.tipo?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'ano', 'error')} required">
	<label for="ano">
		<g:message code="pessoa.ano.label" default="Ano" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="ano" required="" value="${pessoaInstance?.ano}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'dataAniversario', 'error')} required">
	<label for="dataAniversario">
		<g:message code="pessoa.dataAniversario.label" default="Data Aniversario" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataAniversario" precision="day"  value="${pessoaInstance?.dataAniversario}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'dia', 'error')} required">
	<label for="dia">
		<g:message code="pessoa.dia.label" default="Dia" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="dia" required="" value="${pessoaInstance?.dia}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'mes', 'error')} required">
	<label for="mes">
		<g:message code="pessoa.mes.label" default="Mes" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="mes" required="" value="${pessoaInstance?.mes}"/>

</div>

