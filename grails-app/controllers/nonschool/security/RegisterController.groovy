package nonschool.security

import grails.transaction.Transactional
import org.apache.commons.lang.StringUtils

@Transactional
class RegisterController {

    def springSecurityService

    def signup() {
        render view: 'signup', model: params
    }

    def registerUser() {
        //FIXME: Must find a cleaner solution to pass the params, yet hide password fields from URL
        def paramsMap = [
                username: params["username"],
                firstName: params["firstName"],
                lastName: params["lastName"],
                nickname: params["nickname"],
                email: params["email"],
                birthdate: params["birthdate"],
                occupation: params["occupation"]
        ]
        if (StringUtils.isBlank(params.username)) {
            flash.error = message(code: 'user.signup.username.blank.error')
            return redirect(action: "signup", params: paramsMap)
        }
        if (!params.password.equals(params.password_confirm)) {
            flash.error = message(code: 'user.signup.password.confirm.error')
            return redirect(action: "signup", params: paramsMap)
        }
        if (User.findByUsername(params.username)) {
            flash.error = message(code: 'user.signup.username.exists.error', args: [params.username])
            return redirect(action: "signup", params: paramsMap)
        }

        User user = new User(params).save(flush: true)
        (new UserRole(user, Role.findByAuthority("ROLE_ADMIN"))).save(flush: true)

//        this is necessary to authenticate the new user after registration
        springSecurityService.reauthenticate user.username

        flash.success = message(code: 'user.signup.new.user.success', args: [user.username])
        redirect(controller: "home", action: 'index')
    }
}
