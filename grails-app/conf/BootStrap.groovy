import nonschool.security.Role
import nonschool.security.User
import nonschool.security.UserRole

class BootStrap {

    def init = { servletContext ->
//        create admin user and role
        adminUserInit()

    }

    def destroy = {
    }

    def adminUserInit() {
        User adminUser = new User("admin", "admin")
        Role adminRole = new Role("ROLE_ADMIN")
        adminUser.save(flush: true)
        adminRole.save(flush: true)

        UserRole.create adminUser, adminRole, true
    }
}
