<%@ page contentType="text/html;charset=UTF-8" %>
<html>

<head>
    <meta name="layout" content="main"/>
    <meta name="nav" content="login"/>
</head>

<body>
<div class="jumbotron col-md-offset-2 col-md-8">
    <div class="row">
        <h2 style="text-align: center">
            <i class="glyphicon glyphicon-play"></i>
            NonSchool
            <i class="glyphicon glyphicon-forward"></i>
        </h2>
    </div>

    <div class="row">
        <div class="col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-offset-1">
            <h2>
                <g:message code="login.auth.title"/>
            </h2>
        </div>
    </div>
    <br/>

    <form class="form-horizontal" action='${postUrl}' method='POST' id='loginForm' autocomplete='false'>
        <div class="row">
            <div class="col-xs-offset-2 col-xs-8 col-sm-offset-2 col-sm-8 col-md-offset-2 col-md-8">
                <fieldset class="form-group-material-deep-purple-A200">
                    <div class="form-group label-floating">
                        <div class="input-group">
                            <span class="input-group-addon">
                                <i class="glyphicon glyphicon-user"></i>
                            </span>
                            <label for="username" class="control-label control-label-black">
                                <g:message code="login.auth.username.input.label"/>
                            </label>
                            <input type="text" class="form-control" id="username" name="j_username" required>
                        </div>
                    </div>

                    <div class="form-group label-floating">
                        <div class="input-group">
                            <span class="input-group-addon">
                                <i class="glyphicon glyphicon-lock"></i>
                            </span>
                            <label for="password" class="control-label control-label-black">
                                <g:message code="login.auth.password.input.label"/>
                            </label>
                            <input type="text" class="form-control" id="password" name="j_password" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="togglebutton togglebutton-material-deep-purple-A200">
                            <label class="control-label control-label-black">
                                <input type="checkbox" id="remember_me"
                                       name='remember_me'
                                       checked>
                                <g:message code="login.auth.remember.input.label"/>
                            </label>
                        </div>
                    </div>

                    <div class="pull-right">
                        <button type="submit" id="submit" class="btn btn-material-deep-purple-A200">
                            <g:message code="login.auth.submit.btn.label"/>
                        </button>
                    </div>
                </fieldset>
            </div>
        </div>
    </form>
</div>
</body>

</html>
