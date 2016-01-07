<%@ page contentType="text/html;charset=UTF-8" %>
<html>

<head>
    <meta name="layout" content="main"/>
    <meta name="nav" content="myProfile"/>
</head>

<body>
<div class="jumbotron">
    <h2>
        <g:message code="user.showprofile.title"/>
    </h2>
    <br/>

    <div class="row">
        <div class="col-md-offset-1 col-md-10">

            <div class="list-group">
                <div class="list-group-item">
                    <div class="row-picture">
                        <img class="circle" src="http://lorempixel.com/56/56/people/1" alt="icon">
                    </div>

                    <div class="row-content">
                        <h4 class="list-group-item-heading">
                            ${currentUser.username}
                        </h4>

                        <p class="list-group-item-text">#email</p>
                    </div>
                </div>

                <div class="list-group-separator"></div>
                <br/>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-2 col-md-offset-10">
            <g:link controller="user" action="editProfile" class="btn btn-material-indigo-A200 btn-fab">
                <span style="vertical-align: 10px" class="glyphicon glyphicon-pencil"></span>
            </g:link>
        </div>
    </div>
    <br/>
    <br/>
</div>
</body>
</html>
