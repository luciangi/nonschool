<div id="usernameModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <g:form url="[resource: currentUser, action: 'update']" class="form-horizontal" method="PUT">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">X</button>
                    <h4 class="modal-title"><g:message code="user.profile.username.title"/></h4>
                </div>

                <div class="modal-body">
                    <fieldset class="form-group-material-deep-purple-A200">
                        <div class="form-group">
                            <div class="col-md-12">
                                <div class="row">
                                    <div class="col-md-3">
                                        <label for="username" class="control-label control-label-black">
                                            <g:message code="user.profile.username.label"/>
                                        </label>
                                    </div>

                                    <div class="col-md-9">
                                        <input type="text" class="form-control" id="username" name="username"
                                               value="${currentUser.username}" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>

                <div class="modal-footer">
                    <button type="reset" class="btn btn-default">
                        <g:message code="user.profile.refresh.button"/>
                    </button>
                    <button type="submit" class="btn btn-material-deep-purple-A200">
                        <g:message code="user.profile.save.button"/>
                    </button>
                </div>
            </g:form>
        </div>
    </div>
</div>

<div id="infoModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <g:form url="[resource: currentUser, action: 'update']" class="form-horizontal" method="PUT">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">X</button>
                    <h4 class="modal-title"><g:message code="user.profile.info.title"/></h4>
                </div>

                <div class="modal-body">
                    <fieldset class="form-group-material-deep-purple-A200">
                        <div class="form-group">
                            <div class="col-md-12">
                                <div class="row">
                                    <div class="col-md-3">
                                        <label for="firstName" class="control-label control-label-black">
                                            <g:message code="user.profile.firstName.label"/>
                                        </label>
                                    </div>

                                    <div class="col-md-9">
                                        <input type="text" class="form-control" id="firstName" name="firstName"
                                               value="${currentUser.firstName}" required>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-3">
                                        <label for="lastName" class="control-label control-label-black">
                                            <g:message code="user.profile.lastName.label"/>
                                        </label>
                                    </div>

                                    <div class="col-md-9">
                                        <input type="text" class="form-control" id="lastName" name="lastName"
                                               value="${currentUser.lastName}" required>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-3">
                                        <label for="nickname" class="control-label control-label-black">
                                            <g:message code="user.profile.nickname.label"/>
                                        </label>
                                    </div>

                                    <div class="col-md-9">
                                        <input type="text" class="form-control" id="nickname" name="nickname"
                                               value="${currentUser.nickname}" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>

                <div class="modal-footer">
                    <button type="reset" class="btn btn-default">
                        <g:message code="user.profile.refresh.button"/>
                    </button>
                    <button type="submit" class="btn btn-material-deep-purple-A200">
                        <g:message code="user.profile.save.button"/>
                    </button>
                </div>
            </g:form>
        </div>
    </div>
</div>

<div id="birthdateModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <g:form url="[resource: currentUser, action: 'update']" class="form-horizontal" method="PUT">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">X</button>
                    <h4 class="modal-title"><g:message code="user.profile.birthdate.title"/></h4>
                </div>

                <div class="modal-body">
                    <fieldset class="form-group-material-deep-purple-A200">
                        <div class="form-group">
                            <div class="col-md-12">
                                <div class="row">
                                    <div class="col-md-3">
                                        <label for="birthdate" class="control-label control-label-black">
                                            <g:message code="user.profile.birthdate.label"/>
                                        </label>
                                    </div>

                                    <div class="col-md-9">
                                        %{--FIXME: change to datepicker tag lib when it is ready--}%
                                        <input type="date" class="form-control" id="birthdate" name="birthdate"
                                               value="${currentUser.birthdate}" required>
                                        %{--<script>--}%
                                        %{--$(function () {--}%
                                        %{--$('#birthdate').bootstrapMaterialDatePicker({--}%
                                        %{--weekStart: 0,--}%
                                        %{--time: false,--}%
                                        %{--clearButton: true,--}%
                                        %{--maxDate: new Date(),--}%
                                        %{--format: 'DD-MM-YYYY'--}%
                                        %{--});--}%
                                        %{--});--}%
                                        %{--</script>--}%
                                        %{--</div>--}%
                                    </div>

                                    <div class="row">
                                        <div class="col-md-3">
                                            <label for="occupation" class="control-label control-label-black">
                                                <g:message code="user.profile.occupation.label"/>
                                            </label>
                                        </div>

                                        <div class="col-md-9">
                                            <input type="text" class="form-control" id="occupation" name="occupation"
                                                   value="${currentUser.occupation}" required>
                                        </div>
                                    </div>

                                </div>
                            </div>
                    </fieldset>
                </div>

                <div class="modal-footer">
                    <button type="reset" class="btn btn-default">
                        <g:message code="user.profile.refresh.button"/>
                    </button>
                    <button type="submit" class="btn btn-material-deep-purple-A200">
                        <g:message code="user.profile.save.button"/>
                    </button>
                </div>
            </g:form>
        </div>
    </div>
</div>

<div id="contactModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <g:form url="[resource: currentUser, action: 'update']" class="form-horizontal" method="PUT">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">X</button>
                    <h4 class="modal-title"><g:message code="user.profile.contact.title"/></h4>
                </div>

                <div class="modal-body">
                    <fieldset class="form-group-material-deep-purple-A200">
                        <div class="form-group">
                            <div class="col-md-12">
                                <div class="row">
                                    <div class="col-md-3">
                                        <label for="email" class="control-label control-label-black">
                                            <g:message code="user.profile.email.label"/>
                                        </label>
                                    </div>

                                    <div class="col-md-9">
                                        <input type="text" class="form-control" id="email" name="email"
                                               value="${currentUser.email}" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>

                <div class="modal-footer">
                    <button type="reset" class="btn btn-default">
                        <g:message code="user.profile.refresh.button"/>
                    </button>
                    <button type="submit" class="btn btn-material-deep-purple-A200">
                        <g:message code="user.profile.save.button"/>
                    </button>
                </div>
            </g:form>
        </div>
    </div>
</div>

<script>
    $('.modal').on('hidden.bs.modal', function () {
        $(this).find('form')[0].reset();
    });
</script>