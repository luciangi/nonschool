package nonschool.security

import grails.transaction.Transactional
import org.apache.commons.lang.StringUtils
import org.springframework.security.core.context.SecurityContextHolder

@Transactional(readOnly = true)
class UserController {

    def showProfile() {
        [currentUser: User.findById(SecurityContextHolder.getContext().getAuthentication().getPrincipal().id)]
    }

}

