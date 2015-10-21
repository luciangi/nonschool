<%--
  Created by IntelliJ IDEA.
  User: Lucian.Ilie
  Date: 21-Oct-15
  Time: 1:20 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>

<head>
    <meta name="layout" content="main"/>
</head>

<body>

<!-- Your site -->

<h1>You can add your site here.</h1>

<h2>To ensure that material-design theme is working, check out the buttons below.</h2>

<h3 class="text-muted">If you can see the ripple effect on clicking them, then you are good to go!</h3>


<p class="bs-component">
    <a href="javascript:void(0)" class="btn btn-default">Default</a>
    <a href="javascript:void(0)" class="btn btn-primary">Primary</a>
    <a href="javascript:void(0)" class="btn btn-success">Success</a>
    <a href="javascript:void(0)" class="btn btn-info">Info</a>
    <a href="javascript:void(0)" class="btn btn-warning">Warning</a>
    <a href="javascript:void(0)" class="btn btn-danger">Danger</a>
    <a href="javascript:void(0)" class="btn btn-link">Link</a>
</p>

<!-- Your site ends -->
<script>
    $(document).ready(function() {
        // This command is used to initialize some elements and make them work properly
        $.material.init();
    });
</script>

</body>

</html>
