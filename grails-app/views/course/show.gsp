
<%@ page import="nonschool.core.Course;" %>
<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main">
	<g:set var="entityName" value="${message(code: 'course.label', default: 'Course')}" />
	<title><g:message code="course.show.label" /></title>
</head>
<body>

<g:if test="${flash.message}">
	<div class="message" role="status">${flash.message}</div>
</g:if>

<div class="card">
	<div class="card-body">
		<div id="show-course" class="content scaffold-show" role="main">
			<h1>${courseInstance.title}</h1>

			<h3><g:fieldValue bean="${courseInstance}" field="description"/></h3>

		</div>
	</div>
</div>

<div class="card">
	<div class="card-body">
		<div id="show-content" class="content scaffold-show" role="content">
			<g:if test="${courseInstance?.itemList?.toList()?.size() > 0}">
				<g:each in="${courseInstance?.itemList?.toList()?.sort {it?.learningObjective?.cognitive}?.sort {it?.learningObjective?.knowledge}}"
						var="item">
					<div class="row">
						<g:link controller="item" action="show" params="[id: item.id]">
							${item.title} - (${item.learningObjective})
						</g:link>
					</div>
				</g:each>
			</g:if>
			<g:else>
				<g:message code="course.itemList.empty.message"/>
			</g:else>
		</div>
	</div>
</div>
<div class="card">
	<div class="card-body">
		<div id="show-actions" class="content scaffold-show" role="actions">
			<g:form url="[resource:courseInstance, action:'delete']" method="DELETE">
				<g:actionSubmit class="btn btn-material-deep-purple-A200" action="edit" value="${message(code:'default.button.edit.label', default:'Edit')}"/>
				<g:actionSubmit class="btn btn-material-deep-purple-A200" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
			</g:form>
		</div>
	</div>
</div>
</body>
</html>
