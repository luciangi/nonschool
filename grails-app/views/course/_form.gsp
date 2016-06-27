<%@ page import="nonschool.core.Course" %>

<div class="card">
	<div class="card-body">

		<div class="form-group label-floating">
			<label for="title" class="control-label control-label-black">
				<g:message code="course.title.label" default="Title" />

			</label>
			<g:textField name="title" class="form-control" value="${courseInstance?.title}"/>

		</div>

		<div class="form-group label-floating">
			<label for="description" class="control-label control-label-black">
				<g:message code="course.description.label" default="Description" />

			</label>
			<g:textArea name="description" class="form-control" value="${courseInstance?.description}"/>

		</div>

		<div class="form-group label-floating">
			<label for="title" class="control-label control-label-black">
				<g:message code="course.duration.label" default="Duration (min)" />

			</label>
			<g:textField typeof="duration" name="duration" class="form-control" value="${courseInstance?.duration}"/>

		</div>

		<div class="checkbox">
			<label class="control-label control-label-black">
				<g:checkBox name="published" checked="${courseInstance?.published}"/> <g:message code="course.published.label" default="Published" />

			</label>

		</div>

		<div class="checkbox">
			<label class="control-label control-label-black">
				<g:checkBox name="communityEdit" checked="${courseInstance?.communityEdit}"/> <g:message code="course.communityEdit.label" default="Community Edit" />

			</label>

		</div>

	</div>
</div>