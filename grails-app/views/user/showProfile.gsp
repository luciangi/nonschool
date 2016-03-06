<%@ page contentType="text/html;charset=UTF-8" %>
<html>

<head>
    <meta name="layout" content="main"/>
    <meta name="nav" content="myProfile"/>
</head>

<body>

<div class="row">
    <div class="col-md-offset-1 col-md-10">
        <div class="card">
            <div class="card-image profile-background-img">
                <g:img uri="${resource(dir: "images", file: "temp_image.png")}"/>
            </div>

            <div class="card-body" style="text-align: center">
                <g:img class="card-profile-image" uri="${resource(dir: "images", file: "temp_avatar.png")}"/>
                %{--<div class="btn-group-sm pull-right">--}%
                %{--<a class="btn btn-fab btn-group-sm"><span style="vertical-align: 10px" class="glyphicon glyphicon-pencil"></span></a>--}%
                %{--</div>--}%
                <div class="row">
                    <h2>${currentUser.username}</h2>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-offset-1 col-md-10">
        <div class="col-md-6 padding-right">
            <div class="row">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <h3>Profile Info</h3>
                        </div>

                        <div class="row">
                            <label>Name</label>
                            <h4>${currentUser.firstName} ${currentUser.lastName}</h4>
                        </div>

                        <div class="row">
                            <label>Nickname</label>
                            <h4>${currentUser.nickname}</h4>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <h3>Contact</h3>
                        </div>

                        <div class="row">
                            <label>Email</label>
                            <h4>${currentUser.email}</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-6 padding-left">
            <div class="row">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <h3>Birthdate and occupation</h3>
                        </div>

                        <div class="row">
                            <label>Birthdate</label>
                            <h4><g:formatDate format="${g.message(code: "default.date.format")}"
                                              date="${currentUser?.birthdate?.clearTime()}"/></h4>
                        </div>

                        <div class="row">
                            <label>Occupation</label>
                            <h4>${currentUser.occupation}</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
