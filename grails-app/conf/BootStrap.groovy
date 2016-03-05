import nonschool.core.Course
import nonschool.core.Item
import nonschool.core.Resource
import nonschool.security.Role
import nonschool.security.User
import nonschool.security.UserRole

class BootStrap {

    def init = { servletContext ->
//        create admin user and role
        adminUserInit()
        generateData()
    }

    def destroy = {
    }

    def adminUserInit() {
        User adminUser = new User("admin", "admin")
        adminUser.firstName = "firstName"
        adminUser.lastName = "lastName"
        adminUser.nickname = "nickname"
        adminUser.email = "email@email.com"
        adminUser.birthdate = new Date()
        adminUser.occupation = "occupation"

        Role adminRole = new Role("ROLE_ADMIN")
        adminUser.save(flush: true)
        adminRole.save(flush: true)

        UserRole.create adminUser, adminRole, true
    }

    def generateData() {
        Item item = new Item()
        item.title = "Djikstra's Algorithm"
        item.description = "A short summary and implementation example of how to find shortcuts where there are none."
        item.duration = 15
        item.save(flush: true, failOnError: true)

        Course course = new Course()
        course.title = 'Graph Theory'
        course.description = "A basic introduction the world of nodes and edges"
        course.duration = 85
        course.save(flush: true, failOnError: true)

        Course course2 = new Course()
        course2.title = 'Artificial Intelligence'
        course2.description = "A beginner's guide to the exciting endeavour to create HAL"
        course2.duration = 285
        course2.save(flush: true, failOnError: true)

    }
}
