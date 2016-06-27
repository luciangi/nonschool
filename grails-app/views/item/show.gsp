
<%@ page import="nonschool.core.Item" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}" />
		<title><g:message code="item.show.label" /></title>
	</head>
	<body>

        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>

        <div class="card">
            <div class="card-body">
                <div id="show-item" class="content scaffold-show" role="main">
                    <h1>${itemInstance.title}</h1>

                    <h3><g:fieldValue bean="${itemInstance}" field="description"/></h3>
                </div>
            </div>
        </div>

        <div class="card">
            <div class="card-body">
                <div id="show-content" class="content scaffold-show" role="content">
                    ${raw(itemInstance.htmlTemplate?.encodeAsHTML()?.replaceAll('\n', '<br/>'))}
                </div>
            </div>
        </div>
        <div class="card">
            <div class="card-body">
                <div id="show-actions" class="content scaffold-show" role="actions">
                    <g:form url="[resource:itemInstance, action:'delete']" method="DELETE">
                            <g:actionSubmit class="btn btn-material-deep-purple-A200" action="edit" value="${message(code:'default.button.edit.label', default:'Edit')}"/>
                            <g:actionSubmit class="btn btn-material-deep-purple-A200" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    </g:form>
                </div>
            </div>
        </div>
	</body>
</html>
