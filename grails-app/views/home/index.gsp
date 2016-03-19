<%@ page contentType="text/html;charset=UTF-8" %>
<html>

<head>
    <meta name="layout" content="main"/>
    <meta name="nav" content="home"/>
    <title>Landing Page</title>
</head>

<body>

<div class="row">
    <div class="card">
        <div class="card-body">
            <div class="row" style="text-align: center">
                <h1><g:message code="home.welcome.title"/></h1>
            </div>
            <br/>
            <br/>
            <br/>

            <div class="row">
                <h4><g:message code="home.welcome.desciption.first"/></h4>
                <h4><g:message code="home.welcome.desciption.second"/>
                <sec:ifNotLoggedIn>
                    <g:link controller="register" action="signup"><g:message code="home.welcome.signup"/></g:link>
                </sec:ifNotLoggedIn>
                </h4>
            </div>
        </div>
    </div>
</div>

%{--TODO: implement the news feed--}%
<div class="row">
    <div class="card">
        <div class="card-body">
            <div class="row">
                <h4><g:message code="home.newsfeed.title"/></h4>
            </div>

            <div class="row">
                <div class="list-group">
                    <div class="list-group-item">
                        <div class="row-content">
                            <div class="least-content">15m</div>
                            <h4 class="list-group-item-heading">New Graph Theory Course is here!</h4>

                            <p class="list-group-item-text">A basic introduction the world of nodes and edges
                            Title Graph Theory.</p>
                        </div>
                    </div>

                    <div class="list-group-separator"></div>

                    <div class="list-group-item">

                        <div class="row-content">
                            <div class="least-content">10m</div>
                            <h4 class="list-group-item-heading">Djikstra's Algorith updated.</h4>

                            <p class="list-group-item-text">Description A short summary and implementation example of how to find shortcuts where there are none.
                            Title Djikstra's Algorithm</p>
                        </div>
                    </div>

                    <div class="list-group-separator"></div>

                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="card">
        <div class="card-body">
            <div class="row">
                <h4><g:message code="home.appdetails.title"/></h4>
            </div>

            <div class="row">
                <div class="list-group">
                    <div class="list-group-item">
                        <div class="row-action-primary">
                            <g:link uri="http://grails.github.io/grails-doc/2.4.3/">
                                <g:img uri="${resource(dir: "images", file: "grails_logo.png")}"
                                       style="background: white"/>
                            </g:link>
                        </div>

                        <div class="row-content">
                            <h4 class="list-group-item-heading"><g:message code="home.appdetails.grails.title"/></h4>

                            <p class="list-group-item-text">
                                <g:message code="home.appdetails.grails.description"/>
                                <g:link uri="http://grails.github.io/grails-doc/2.4.3/"><g:message
                                        code="home.appdetails.here"/></g:link>.
                            </p>
                        </div>
                    </div>

                    <div class="list-group-separator"></div>

                    <div class="list-group-item">
                        <div class="row-action-primary">
                            <g:link uri="https://github.com/iluci/nonSchool">
                                <g:img uri="${resource(dir: "images", file: "github_logo.png")}"
                                       style="background: white"/>
                            </g:link>
                        </div>

                        <div class="row-content">
                            <h4 class="list-group-item-heading"><g:message code="home.appdetails.github.title"/></h4>

                            <p class="list-group-item-text">
                                <g:message code="home.appdetails.github.description"/>
                                <g:link uri="https://github.com/iluci/nonSchool"><g:message
                                        code="home.appdetails.here"/></g:link>.
                            </p>
                        </div>
                    </div>

                    <div class="list-group-separator"></div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>

</html>