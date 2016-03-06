
<%@ page import="nonschool.core.Item" %>
<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main">
	<meta name="nav" content="allItems"/>
	<title><g:message code="item.list.public.label"/></title>
</head>
<body>
<div id="list-item" class="content scaffold-list" role="main">

	<div class="card">
		<div class="card-body">
			<div class="row">
				<h1 class="col-md-4 col-lg-4"><g:message code="item.list.public.label"/></h1>
				<div class="form-group col-md-4 col-lg-4">
					<br/>
					<input class="form-control input-lg" id="searchCriteria" name="searchCriteria" type="text" placeholder="Search...">
				</div>
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
					<g:each in="${itemInstanceList}" status="i" var="item">
						<g:if test="${i%2==0}">
							<g:link controller="item" action="show" params="[id: item?.id]">
								<div class="list-group-item">
									<div class="row-picture">
										<i class="glyphicon glyphicon-book"></i>
									</div>
									<div class="row-content">
										<div class="least-content">${item?.duration?.intdiv(60)}h ${item?.duration % 60}m</div>
										<h2 class="list-group-item-heading">${item?.title}</h2>

										<p class="list-group-item-text">${item?.description}</p>
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
					<g:each in="${itemInstanceList}" status="i" var="item">
						<g:if test="${i%2!=0}">
							<g:link controller="item" action="show" params="[id: item?.id]">
								<div class="list-group-item">
									<div class="row-picture">
										<i class="glyphicon glyphicon-book"></i>
									</div>
									<div class="row-content">
										<div class="least-content">${item?.duration?.intdiv(60)}h ${item?.duration % 60}m</div>
										<h2 class="list-group-item-heading">${item?.title}</h2>

										<p class="list-group-item-text">${item?.description}</p>
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
		<g:paginate total="${itemInstanceCount ?: 0}" />
	</div>
</div>
</body>
</html>
