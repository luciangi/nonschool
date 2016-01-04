package nonschool

import nonschool.security.Role
import nonschool.security.User
import nonschool.security.UserRole
import org.apache.commons.lang.StringUtils

class SignupController {

    def springSecurityService

    def index() {}

    def addNewUser() {
        if (StringUtils.isBlank(params.username)) {
            flash.error = message(code: 'default.blank.error', args: ['Username'])
            return redirect(action: "index")
        }
        if (!params.password.equals(params.password_confirm)) {
            flash.error = message(code: 'signup.index.password.confirm.error')
            return redirect(action: "index")
        }
        if (User.findByUsername(params.username)) {
            flash.error = message(code: 'signup.index.username.exists.error', args: [params.username])
            return redirect(action: "index")
        }

        User user = new User(params)
        user.save(flush: true)
        UserRole userRole = new UserRole(user, Role.findByAuthority("ROLE_ADMIN"))
        userRole.save(flush: true)

        springSecurityService.reauthenticate user.username

        flash.success = message(code: 'signup.index.new.user.success', args: [user.username])
        redirect(controller: "home", action: 'index')
    }

}
