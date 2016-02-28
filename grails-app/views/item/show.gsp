
<%@ page import="nonschool.core.Item" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-item" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-item" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list item">
			
				<g:if test="${itemInstance?.communityEdit}">
				<li class="fieldcontain">
					<span id="communityEdit-label" class="property-label"><g:message code="item.communityEdit.label" default="Community Edit" /></span>
					
						<span class="property-value" aria-labelledby="communityEdit-label"><g:formatBoolean boolean="${itemInstance?.communityEdit}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.courseList}">
				<li class="fieldcontain">
					<span id="courseList-label" class="property-label"><g:message code="item.courseList.label" default="Course List" /></span>
					
						<g:each in="${itemInstance.courseList}" var="c">
						<span class="property-value" aria-labelledby="courseList-label"><g:link controller="course" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="item.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${itemInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.htmlTemplate}">
				<li class="fieldcontain">
					<span id="htmlTemplate-label" class="property-label"><g:message code="item.htmlTemplate.label" default="Html Template" /></span>
					
						<span class="property-value" aria-labelledby="htmlTemplate-label"><g:fieldValue bean="${itemInstance}" field="htmlTemplate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.owner}">
				<li class="fieldcontain">
					<span id="owner-label" class="property-label"><g:message code="item.owner.label" default="Owner" /></span>
					
						<span class="property-value" aria-labelledby="owner-label"><g:link controller="user" action="show" id="${itemInstance?.owner?.id}">${itemInstance?.owner?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.published}">
				<li class="fieldcontain">
					<span id="published-label" class="property-label"><g:message code="item.published.label" default="Published" /></span>
					
						<span class="property-value" aria-labelledby="published-label"><g:formatBoolean boolean="${itemInstance?.published}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.resourceList}">
				<li class="fieldcontain">
					<span id="resourceList-label" class="property-label"><g:message code="item.resourceList.label" default="Resource List" /></span>
					
						<g:each in="${itemInstance.resourceList}" var="r">
						<span class="property-value" aria-labelledby="resourceList-label"><g:link controller="resource" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="item.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${itemInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:itemInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${itemInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
