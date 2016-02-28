<%@ page import="nonschool.core.Item" %>



<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'communityEdit', 'error')} ">
	<label for="communityEdit">
		<g:message code="item.communityEdit.label" default="Community Edit" />
		
	</label>
	<g:checkBox name="communityEdit" value="${itemInstance?.communityEdit}" />

</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'courseList', 'error')} ">
	<label for="courseList">
		<g:message code="item.courseList.label" default="Course List" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="item.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${itemInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'htmlTemplate', 'error')} ">
	<label for="htmlTemplate">
		<g:message code="item.htmlTemplate.label" default="Html Template" />
		
	</label>
	<g:textField name="htmlTemplate" value="${itemInstance?.htmlTemplate}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'owner', 'error')} ">
	<label for="owner">
		<g:message code="item.owner.label" default="Owner" />
		
	</label>
	<g:select id="owner" name="owner.id" from="${nonschool.security.User.list()}" optionKey="id" value="${itemInstance?.owner?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'published', 'error')} ">
	<label for="published">
		<g:message code="item.published.label" default="Published" />
		
	</label>
	<g:checkBox name="published" value="${itemInstance?.published}" />

</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'resourceList', 'error')} ">
	<label for="resourceList">
		<g:message code="item.resourceList.label" default="Resource List" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${itemInstance?.resourceList?}" var="r">
    <li><g:link controller="resource" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="resource" action="create" params="['item.id': itemInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'resource.label', default: 'Resource')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="item.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${itemInstance?.title}"/>

</div>

