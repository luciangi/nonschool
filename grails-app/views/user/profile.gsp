<%@ page contentType="text/html;charset=UTF-8" %>
<html>

<head>
    <meta name="layout" content="main"/>
    <meta name="nav" content="profile"/>
    <title><g:message code="user.profile.title"/></title>
</head>

<body>

<div class="row">
    <div class="card">
        <div class="card-image profile-background-img">
            <g:img uri="${resource(dir: "images", file: "temp_image.png")}"/>
        </div>

        <div class="card-body" style="text-align: center">
            <g:img class="card-profile-image" uri="${resource(dir: "images", file: "temp_avatar.png")}"/>
            <div class="row">
                <div class="col-md-offset-2 col-md-8">
                    <h2>${currentUser.username}</h2>
                </div>

                <div class="col-md-2">
                    <button class="btn btn-fab btn-group-sm btn-material-deep-purple-A200" data-toggle="modal" data-target="#usernameModal">
                        <span style="vertical-align: 10px" class="glyphicon glyphicon-pencil"></span>
                    </button>
                </div>
            </div>
        </div>
        %{--</div>--}%
    </div>

    <div class="row">
        <div class="col-md-6">
            <div class="col-md-12">
                <div class="row">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-10">
                                    <h3><g:message code="user.profile.info.title"/></h3>
                                </div>

                                <div class="col-md-2">
                                    <button class="btn btn-fab btn-group-sm btn-material-deep-purple-A200" data-toggle="modal"
                                            data-target="#infoModal">
                                        <span style="vertical-align: 10px"
                                              class="glyphicon glyphicon-pencil"></span>
                                    </button>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <label><g:message code="user.profile.name.label"/></label>
                                    <h4>${currentUser.firstName} ${currentUser.lastName}</h4>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <label><g:message code="user.profile.nickname.label"/></label>
                                    <h4>${currentUser.nickname}</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-12">

                <div class="row">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-10">
                                    <h3><g:message code="user.profile.contact.title"/></h3>
                                </div>

                                <div class="col-md-2">
                                    <button class="btn btn-fab btn-group-sm btn-material-deep-purple-A200" data-toggle="modal"
                                            data-target="#contactModal">
                                        <span style="vertical-align: 10px"
                                              class="glyphicon glyphicon-pencil"></span>
                                    </button>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <label><g:message code="user.profile.email.label"/></label>
                                    <h4>${currentUser.email}</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-6">
            <div class="col-md-12">

                <div class="row">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-10">
                                    <h3><g:message code="user.profile.birthdate.title"/></h3>
                                </div>

                                <div class="col-md-2">
                                    <button class="btn btn-fab btn-group-sm btn-material-deep-purple-A200" data-toggle="modal"
                                            data-target="#birthdateModal">
                                        <span style="vertical-align: 10px"
                                              class="glyphicon glyphicon-pencil"></span>
                                    </button>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <label><g:message code="user.profile.birthdate.label"/></label>
                                    <h4><g:formatDate format="${g.message(code: "default.date.format")}"
                                                      date="${currentUser?.birthdate?.clearTime()}"/></h4>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <label><g:message code="user.profile.occupation.label"/></label>
                                    <h4>${currentUser.occupation}</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

%{--<!-- Modal -->--}%
<g:render template="modals/edit" model="[currentUser: currentUser]"/>

</body>
</html>