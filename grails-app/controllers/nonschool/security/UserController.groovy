package nonschool.security

import grails.transaction.Transactional
import org.apache.commons.lang.StringUtils
import org.springframework.security.core.context.SecurityContextHolder

@Transactional(readOnly = true)
class UserController {

    def springSecurityService

    def signup() {}

    def showProfile() {
        [currentUser: SecurityContextHolder.getContext().getAuthentication().getPrincipal()]
    }

    def editProfile() {
        [currentUser: SecurityContextHolder.getContext().getAuthentication().getPrincipal()]
    }

    @Transactional
    def registerUser() {
        if (StringUtils.isBlank(params.username)) {
            flash.error = message(code: 'user.signup.username.blank.error')
            return redirect(action: "index")
        }
        if (!params.password.equals(params.password_confirm)) {
            flash.error = message(code: 'user.signup.password.confirm.error')
            return redirect(action: "index")
        }
        if (User.findByUsername(params.username)) {
            flash.error = message(code: 'user.signup.username.exists.error', args: [params.username])
            return redirect(action: "index")
        }

        User user = new User(params).save(flush: true)
        (new UserRole(user, Role.findByAuthority("ROLE_ADMIN"))).save(flush: true)

//        this is necessary to authenticate the new user after registration
        springSecurityService.reauthenticate user.username

        flash.success = message(code: 'user.signup.new.user.success', args: [user.username])
        redirect(controller: "home", action: 'index')
    }

}
