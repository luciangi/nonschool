<%@ page contentType="text/html;charset=UTF-8" %>
<html>

<head>
    <meta name="layout" content="main"/>
    <meta name="nav" content="signup"/>
</head>

<body>
<div class="jumbotron">
    <div class="row">
        <h2 class="col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-offset-1">
            <g:message code="user.signup.title"/>
        </h2>
    </div>
    <br/>
    <g:form controller="register" action="registerUser" class="form-horizontal signup_form" method="POST">
        <fieldset class="form-group-material-deep-purple-A200">
            <div class="form-group">
                <label for="username" class="col-md-2 control-label control-label-black">
                    <g:message code="user.signup.username.input.label"/>
                </label>

                <div class="col-md-9">
                    <input type="text" class="form-control" id="username" name="username" value="${username}" required>
                </div>
            </div>

            <div class="form-group">
                <label for="password" class="col-md-2 control-label control-label-black">
                    <g:message code="user.signup.password.input.label"/>
                </label>

                <div class="col-md-9">
                    <input type="password" class="form-control" id="password" name="password" required>
                </div>
            </div>

            <div class="form-group">
                <label for="password_confirm" class="col-md-2 control-label control-label-black">
                    <g:message code="user.signup.password.confirm.input.label"/>
                </label>

                <div class="col-md-9">
                    <input type="password" class="form-control" id="password_confirm" name="password_confirm" required>
                </div>
            </div>

            <div class="form-group">
                <label for="firstName" class="col-md-2 control-label control-label-black">
                    <g:message code="user.signup.firstName.input.label"/>
                </label>

                <div class="col-md-9">
                    <input type="text" class="form-control" id="firstName" name="firstName" value="${firstName}" required>
                </div>
            </div>

            <div class="form-group">
                <label for="lastName" class="col-md-2 control-label control-label-black">
                    <g:message code="user.signup.lastName.input.label"/>
                </label>

                <div class="col-md-9">
                    <input type="text" class="form-control" id="lastName" name="lastName" value="${lastName}" required>
                </div>
            </div>

            <div class="form-group">
                <label for="nickname" class="col-md-2 control-label control-label-black">
                    <g:message code="user.signup.nickname.input.label"/>
                </label>

                <div class="col-md-9">
                    <input type="text" class="form-control" id="nickname" name="nickname" value="${nickname}">
                </div>
            </div>

            <div class="form-group">
                <label for="email" class="col-md-2 control-label control-label-black">
                    <g:message code="user.signup.email.input.label"/>
                </label>

                <div class="col-md-9">
                    <input type="email" class="form-control" id="email" name="email" value="${email}" required>
                </div>
            </div>

            <div class="form-group">
                <label for="birthdate" class="col-md-2 control-label control-label-black">
                    <g:message code="user.signup.birthdate.input.label"/>
                </label>

                <div class="col-md-9">
                    <input type="date" class="form-control" id="birthdate" name="birthdate" value="${birthdate}">
                </div>
            </div>

            <div class="form-group">
                <label for="occupation" class="col-md-2 control-label control-label-black">
                    <g:message code="user.signup.occupation.input.label"/>
                </label>

                <div class="col-md-9">
                    <input type="text" class="form-control" id="occupation" name="occupation" value="${occupation}">
                </div>
            </div>

            <div class="form-group">
                <div class="col-md-10 col-md-offset-2">
                    <button type="button" class="btn btn-default" onclick="$('.signup_form')[0].reset();">
                        <g:message code="user.signup.reset.btn.label"/>
                    </button>
                    <button type="submit" class="btn btn-material-deep-purple-A200">
                        <g:message code="user.signup.submit.btn.label"/>
                    </button>
                </div>
            </div>
        </fieldset>
    </g:form>
</div>
</body>
</html>