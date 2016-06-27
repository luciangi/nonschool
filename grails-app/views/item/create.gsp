<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}" />
		<title><g:message code="item.create.label" /></title>
	</head>
	<body>

		<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
		</g:if>
		<div id="create-item" class="content scaffold-create" role="main">
			<div class="card">
				<div class="card-body">
					<div class="row">
						<h1><g:message code="item.create.label"/></h1>
						<g:hasErrors bean="${itemInstance}">
							<ul class="errors alert-danger" role="alert">
								<g:eachError bean="${itemInstance}" var="error">
									<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
								</g:eachError>
							</ul>
						</g:hasErrors>
					</div>
				</div>
			</div>

			<g:form url="[resource:itemInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="btn btn-material-deep-purple-A200" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
