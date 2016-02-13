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
        Resource resource = new Resource()
        resource.name = 'cacademaca'
        resource.save(flush: true, failOnError: true)

        Item item = new Item()
        item.title = 'Bullshit'
        item.resourceList.push(resource)
        item.save(flush: true, failOnError: true)

        Course course = new Course()
        course.title = 'Bulshit'
        course.itemList.push(item)
        course.save(flush: true, failOnError: true)
    }
}
