<%@ page import="nonschool.classification.LearningObjective; nonschool.core.Item" %>

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
				<g:message code="item.htmlTemplate.label" default="Content" />

			</label>
			<g:textArea name="htmlTemplate" class="form-control" value="${itemInstance?.htmlTemplate}"/>

		</div>

		<div class="form-group label-floating">
			<label for="title" class="control-label control-label-black">
				<g:message code="item.duration.label" default="Duration (min)" />

			</label>
			<g:textField typeof="duration" name="duration" class="form-control" value="${itemInstance?.duration}"/>

		</div>

		<div class="form-group label-floating">
			<label for="title" class="control-label control-label-black">
				<g:message code="item.learningObjective.label"/>

			</label>
			<g:select from="${LearningObjective.list()}"
					  optionKey="id"
					  optionValue="name"
					  name="learningObjective.id" class="form-control" value="${itemInstance?.learningObjective?.id}"/>

		</div>

        <div class="checkbox">
            <label class="control-label control-label-black">
				<g:checkBox name="published" checked="${itemInstance?.published}"/> <g:message code="item.published.label" default="Published" />

			</label>

		</div>

        <div class="checkbox">
            <label class="control-label control-label-black">
                <g:checkBox name="communityEdit" checked="${itemInstance?.communityEdit}"/> <g:message code="item.communityEdit.label" default="Community Edit" />

            </label>

        </div>

	</div>
</div>