
<%@ page import="br.com.estilodevida.Buteco" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'buteco.label', default: 'Buteco')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-buteco" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-buteco" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'buteco.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="telefone" title="${message(code: 'buteco.telefone.label', default: 'Telefone')}" />
					
						<g:sortableColumn property="tipo" title="${message(code: 'buteco.tipo.label', default: 'Tipo')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${butecoInstanceList}" status="i" var="butecoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${butecoInstance.id}">${fieldValue(bean: butecoInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: butecoInstance, field: "telefone")}</td>
					
						<td>${fieldValue(bean: butecoInstance, field: "tipo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${butecoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
