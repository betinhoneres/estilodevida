<%@ page import="br.com.estilodevida.Buteco" %>



<div class="fieldcontain ${hasErrors(bean: butecoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="buteco.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${butecoInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: butecoInstance, field: 'telefone', 'error')} required">
	<label for="telefone">
		<g:message code="buteco.telefone.label" default="Telefone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefone" required="" value="${butecoInstance?.telefone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: butecoInstance, field: 'tipo', 'error')} required">
	<label for="tipo">
		<g:message code="buteco.tipo.label" default="Tipo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tipo" from="${br.com.estilodevida.dominios.DmTipoPessoa?.values()}" keys="${br.com.estilodevida.dominios.DmTipoPessoa.values()*.name()}" required="" value="${butecoInstance?.tipo?.name()}" />

</div>

