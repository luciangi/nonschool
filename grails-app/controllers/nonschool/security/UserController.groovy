package nonschool.security

import grails.transaction.Transactional
import org.springframework.security.core.context.SecurityContextHolder

@Transactional(readOnly = true)
class UserController {

    def profile() {
        [currentUser: User.findById(SecurityContextHolder.getContext().getAuthentication().getPrincipal().id)]
    }

    @Transactional
    def update(User userInstance) {
        if (userInstance == null) {
            response.sendError(404)
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view: 'profile'
            return
        }

        userInstance.save flush: true

        redirect(controller: 'user', action: 'profile')
    }

}

