<%@ page import="nonschool.core.Item" %>

<div class="card">
	<div class="card-body">

        <div class="form-group label-floating">
            <label for="title" class="control-label control-label-black">
                <g:message code="item.title.label" default="Title" />

            </label>
            <g:textField name="title" class="form-control" value="${itemInstance?.title}"/>

        </div>

        <div class="form-group label-floating">
			<label for="description" class="control-label control-label-black">
				<g:message code="item.description.label" default="Description" />

			</label>
			<g:textArea name="description" class="form-control" value="${itemInstance?.description}"/>

		</div>

		<div class="form-group label-floating">
			<label for="htmlTemplate" class="control-label control-label-black">
				<g:message code="item.htmlTemplate.label" default="Html Template" />

			</label>
			<g:textArea name="htmlTemplate" class="form-control" value="${itemInstance?.htmlTemplate}"/>

		</div>

        <div class="checkbox">
            <label class="control-label control-label-black">
				<input type="checkbox" name="published" value="${itemInstance?.published}"> <g:message code="item.published.label" default="Published" />

			</label>

		</div>

        <div class="checkbox">
            <label class="control-label control-label-black">
                <input type="checkbox" name="communityEdit" value="${itemInstance?.communityEdit}"> <g:message code="item.communityEdit.label" default="Community Edit" />

            </label>

        </div>

	</div>
</div>