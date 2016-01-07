<%@ page contentType="text/html;charset=UTF-8" %>
<html>

<head>
    <meta name="layout" content="main"/>
    <meta name="nav" content="login"/>
</head>

<body>
<div class="row">
    <div class="jumbotron">
        <h2>
            <g:message code="login.auth.title"/>
        </h2>
        <br/>

        <form class="form-horizontal"
              action='${postUrl}'
              method='POST' id='loginForm'
              autocomplete='off'>
            <div class="row">
                <fieldset class="form-group-material-indigo-A200">
                    <div class="form-group">
                        <label for="username" class="col-md-2 control-label control-label-black">
                            <g:message code="login.auth.username.input.label"/>
                        </label>

                        <div class="col-md-9">
                            <input type="text" class="form-control" id="username" name="j_username">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="password" class="col-md-2 control-label control-label-black">
                            <g:message code="login.auth.password.input.label"/>
                        </label>

                        <div class="col-md-9">
                            <input type="password" class="form-control" id="password" name="j_password">
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-9">
                            <div class="togglebutton togglebutton-material-indigo-A200">
                                <label>
                                    <input type="checkbox" id="remember_me"
                                           name='${rememberMeParameter}'
                                           checked>
                                    <g:message code="login.auth.remember.input.label"/>
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-offset-2 col-md-9">
                            <button type="submit" id="submit" class="btn btn-material-indigo-A200">
                                <g:message code="login.auth.submit.btn.label"/>
                            </button>
                        </div>
                    </div>
                </fieldset>
            </div>
        </form>
    </div>
</div>
</body>

</html>
