<%@ page import="nonschool.core.Course" %>
<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main">
	<g:set var="entityName" value="${message(code: 'course.label', default: 'Course')}" />
	<title><g:message code="course.edit.label"/></title>
</head>
<body>
<g:if test="${flash.message}">
	<div class="message" role="status">${flash.message}</div>
</g:if>
<div id="edit-course" class="content scaffold-edit" role="main">
	<div class="card">
		<div class="card-body">
			<div class="row">
				<h1><g:message code="course.edit.label"/></h1>
				<g:hasErrors bean="${courseInstance}">
					<ul class="errors alert-danger" role="alert">
						<g:eachError bean="${courseInstance}" var="error">
							<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
						</g:eachError>
					</ul>
				</g:hasErrors>
			</div>
		</div>
	</div>

	<g:form url="[resource:courseInstance, action:'update']" method="PUT" >
		<g:hiddenField name="version" value="${courseInstance?.version}" />
	%{--<fieldset class="form">--}%
		<g:render template="form"/>
	%{--</fieldset>--}%
		<fieldset class="buttons">
			<g:actionSubmit class="btn btn-material-deep-purple-A200" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
		</fieldset>
	</g:form>
</div>
</body>
</html>
