
<%@ page import="nonschool.core.Course" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
        <meta name="nav" content="allCourses"/>
		<title><g:message code="course.list.public.label"/></title>
	</head>
	<body>
		<div id="list-course" class="content scaffold-list" role="main">

			<div class="card">
				<div class="card-body">
					<div class="row">
						<h1 class="col-md-4 col-lg-4"><g:message code="course.list.public.label"/></h1>
						<g:form name="course_search_form" action="index" controller="course">
							<div class="form-group col-md-4 col-lg-4">
								<input class="form-control input-lg" id="searchCriteria" name="searchCriteria" type="text" placeholder="Search..."
									   value="${params['searchCriteria']}">
							</div>
							<div class="form-group col-md-4 col-lg-4">
								<g:submitButton class="btn btn-material-deep-purple-A200" name="course_search" value="${message(code:'course.search.label')}"/>
							</div>
						</g:form>
					</div>
					<div class="row">
						<g:link action="create" controller="course" >
							<button class="btn btn-fab btn-group-sm btn-material-deep-purple-A200">
								<span style="vertical-align: 10px" class="glyphicon glyphicon-plus">
								</span>
							</button>
						</g:link>

					</div>
				</div>
			</div>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<div class="card">
				<div class="card-body">
					<div class="row">
						<div class="list-group col-lg-6 col-md-6">
						<g:each in="${courseInstanceList}" status="i" var="course">
							<g:if test="${i%2==0}">
                                <g:link controller="course" action="show" params="[id: course?.id]">
                                    <div class="list-group-item">
                                        <div class="row-picture">
                                            <i class="glyphicon glyphicon-book"></i>
                                        </div>
                                        <div class="row-content">
                                            <div class="least-content">${course?.duration?.intdiv(60)}h ${course?.duration % 60}m</div>
                                            <h2 class="list-group-item-heading">${course?.title}</h2>

                                            <p class="list-group-item-text">${course?.description}</p>
                                        </div>
                                    </div>
                                </g:link>
							<div class="list-group-separator"></div>
							</g:if>
							<g:else>
                            </g:else>
						</g:each>
						</div>
						<div class="list-group col-lg-6 col-md-6">
							<g:each in="${courseInstanceList}" status="i" var="course">
								<g:if test="${i%2!=0}">
                                    <g:link controller="course" action="show" params="[id: course?.id]">
                                        <div class="list-group-item">
                                            <div class="row-picture">
                                                <i class="glyphicon glyphicon-book"></i>
                                            </div>
                                            <div class="row-content">
                                                <div class="least-content">${course?.duration?.intdiv(60)}h ${course?.duration % 60}m</div>
                                                <h2 class="list-group-item-heading">${course?.title}</h2>

                                                <p class="list-group-item-text">${course?.description}</p>
                                            </div>
                                        </div>
                                    </g:link>
									<div class="list-group-separator"></div>
								</g:if>

								<g:else>
                                </g:else>
							</g:each>
						</div>
					</div>
				</div>
			</div>
			<div class="pagination">
				<g:paginate total="${courseInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
