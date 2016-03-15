<%@ page contentType="text/html;charset=UTF-8" %>
<html>

<head>
    <meta name="layout" content="main"/>
    <meta name="nav" content="signup"/>
</head>

<body>
<div class="jumbotron col-md-offset-2 col-md-8">
    <div class="row">
        <h2 class="col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-offset-1">
            <g:message code="user.signup.title"/>
        </h2>
    </div>
    <br/>
    <g:form controller="register" action="registerUser" class="form-horizontal signup_form" method="POST">
        <div class="row">
            <div class="col-xs-offset-2 col-xs-8 col-sm-offset-2 col-sm-8 col-md-offset-2 col-md-8">
                <fieldset class="form-group-material-deep-purple-A200">
                    <div class="form-group label-floating">
                        <label for="username" class="control-label control-label-black">
                            <g:message code="user.signup.username.input.label"/>
                        </label>
                        <input type="text" class="form-control" id="username" name="username" required>
                    </div>

                    <div class="form-group label-floating">
                        <label for="password" class="control-label control-label-black">
                            <g:message code="user.signup.password.input.label"/>
                        </label>
                        <input type="password" class="form-control" id="password" name="password" required>
                    </div>

                    <div class="form-group label-floating">
                        <label for="password_confirm" class="control-label control-label-black">
                            <g:message code="user.signup.password.confirm.input.label"/>
                        </label>
                        <input type="password" class="form-control" id="password_confirm" name="password_confirm"
                               required>
                    </div>

                    <div class="form-group label-floating">
                        <label for="firstName" class="control-label control-label-black">
                            <g:message code="user.signup.firstName.input.label"/>
                        </label>
                        <input type="text" class="form-control" id="firstName" name="firstName" required>
                    </div>

                    <div class="form-group label-floating">
                        <label for="lastName" class="control-label control-label-black">
                            <g:message code="user.signup.lastName.input.label"/>
                        </label>
                        <input type="text" class="form-control" id="lastName" name="lastName" required>
                    </div>

                    <div class="form-group label-floating">
                        <label for="nickname" class="control-label control-label-black">
                            <g:message code="user.signup.nickname.input.label"/>
                        </label>
                        <input type="text" class="form-control" id="nickname" name="nickname">
                    </div>

                    <div class="form-group label-floating">
                        <label for="email" class="control-label control-label-black">
                            <g:message code="user.signup.email.input.label"/>
                        </label>
                        <input type="email" class="form-control" id="email" name="email" required>
                    </div>

                    <div class="form-group label-floating">
                        <label for="birthdate" class="control-label control-label-black">
                            <g:message code="user.signup.birthdate.input.label"/>
                        </label>
                        <non:datePicker name="birthdate" id="birthdate" class="form-control"
                                        maxDate="new Date()" clearButton="true"/>
                    </div>

                    <div class="form-group label-floating">
                        <label for="occupation" class="control-label control-label-black">
                            <g:message code="user.signup.occupation.input.label"/>
                        </label>
                        <input type="text" class="form-control" id="occupation" name="occupation">
                    </div>

                    <div class="pull-right">
                        <button type="reset" class="btn btn-default">
                            <g:message code="user.signup.reset.btn.label"/>
                        </button>
                        <button type="submit" class="btn btn-material-deep-purple-A200">
                            <g:message code="user.signup.submit.btn.label"/>
                        </button>
                    </div>
                </fieldset>
            </div>
        </div>
    </g:form>
</div>
</body>
</html>