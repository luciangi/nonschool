<% def activeLink = pageProperty(name: 'meta.nav').toString() %>
<div class="navbar navbar-material-blue-700">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse"
                data-target=".navbar-material-blue-grey-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <g:link controller="home" action="index" class="navbar-brand">
            <asset:image src="grails_logo.png" alt="Grails" style="height: 100%"/>
        </g:link>
    </div>

    <div class="navbar-collapse collapse navbar-material-blue-grey-collapse">
        <ul class="nav navbar-nav navbar-right">
            <sec:ifNotLoggedIn>
                <li class="${activeLink.equals('login') ? 'active' : null}">
                    <g:link controller="login" action="auth">
                        <g:message code="layouts.menu.login.label"/>
                    </g:link>
                </li>
                <li class="label-material-deep-purple-A200 ${activeLink.equals('signup') ? 'active' : null}">
                    <g:link controller="signup" action="index">
                        <strong>
                            <g:message code="layouts.menu.signup.label"/>
                        </strong>
                    </g:link>
                </li>
            </sec:ifNotLoggedIn>
            <sec:ifLoggedIn>
                <li class="dropdown">
                    <a href="bootstrap-elements.html" data-target="#" class="dropdown-toggle" data-toggle="dropdown">
                        <sec:username/>
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="javascript:void(0)">#My Profile</a></li>
                        <li><a href="javascript:void(0)">#Settings</a></li>
                        <li class="divider"></li>
                        <li>
                            <g:remoteLink controller="logout" method="post" asynchronous="false"
                                          onSuccess="location.reload()">
                                <g:message code="layouts.menu.logout.label"/>
                            </g:remoteLink>
                        </li>
                    </ul>
                </li>
            </sec:ifLoggedIn>
        </ul>
        <ul class="nav navbar-nav">
            <li class="${activeLink.equals('home') ? 'active' : null}">
                <g:link controller="home" action="index">
                    <g:message code="layouts.menu.home.label"/>
                </g:link>
            </li>
        </ul>
    </div>
</div>