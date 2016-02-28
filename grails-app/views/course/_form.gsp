<%@ page import="nonschool.core.Course" %>



<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'communityEdit', 'error')} ">
	<label for="communityEdit">
		<g:message code="course.communityEdit.label" default="Community Edit" />
		
	</label>
	<g:checkBox name="communityEdit" value="${courseInstance?.communityEdit}" />

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="course.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${courseInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'itemList', 'error')} ">
	<label for="itemList">
		<g:message code="course.itemList.label" default="Item List" />
		
	</label>
	<g:select name="itemList" from="${nonschool.core.Item.list()}" multiple="multiple" optionKey="id" size="5" value="${courseInstance?.itemList*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'owner', 'error')} ">
	<label for="owner">
		<g:message code="course.owner.label" default="Owner" />
		
	</label>
	<g:select id="owner" name="owner.id" from="${nonschool.security.User.list()}" optionKey="id" value="${courseInstance?.owner?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'published', 'error')} ">
	<label for="published">
		<g:message code="course.published.label" default="Published" />
		
	</label>
	<g:checkBox name="published" value="${courseInstance?.published}" />

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="course.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${courseInstance?.title}"/>

</div>

