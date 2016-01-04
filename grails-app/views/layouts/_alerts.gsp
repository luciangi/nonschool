<g:if test='${flash.error}'>
    <div class="alert alert-dismissible alert-danger fade in">
        <button type="button" class="close" data-dismiss="alert">x</button>
        <h4>
            <g:message code="alert.error.title"/>
        </h4>

        <p>${flash.error}</p>
    </div>
</g:if>

<g:if test='${flash.message}'>
    <div class="alert alert-dismissible alert-warning fade in">
        <button type="button" class="close" data-dismiss="alert">x</button>
        <h4>
            <g:message code="alert.warning.title"/>
        </h4>

        <p>${flash.message}</p>
    </div>
</g:if>

<g:if test='${flash.success}'>
    <div class="alert alert-dismissible alert-success fade in">
        <button type="button" class="close" data-dismiss="alert">x</button>
        <h4>
            <g:message code="alert.success.title"/>
        </h4>

        <p>${flash.success}</p>
    </div>
</g:if>

<g:if test='${flash.info}'>
    <div class="alert alert-dismissible alert-info fade in">
        <button type="button" class="close" data-dismiss="alert">x</button>
        <h4>
            <g:message code="alert.info.title"/>
        </h4>

        <p>flash.info</p>
    </div>
</g:if>