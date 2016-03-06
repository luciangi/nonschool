package nonschool.core



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CourseController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    def courseService

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Course.list(params), model:[courseInstanceCount: Course.count()]
    }

    def show(Course courseInstance) {
        if (courseInstance == null) {
            response.sendError(404)
            return
        }
        respond courseInstance
    }

    def create() {
        respond new Course(params)
    }

    @Transactional
    def save(Course courseInstance) {
        if (courseInstance == null) {
            response.sendError(404)
            return
        }

        if (courseInstance.hasErrors()) {
            respond courseInstance.errors, view:'create'
            return
        }

        courseInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'course.label', default: 'Course'), courseInstance.id])
                redirect courseInstance
            }
            '*' { respond courseInstance, [status: CREATED] }
        }
    }

    def edit(Course courseInstance) {
        if (courseInstance == null) {
            response.sendError(404)
            return
        }
        respond courseInstance
    }

    @Transactional
    def update(Course courseInstance) {
        if (courseInstance == null) {
            response.sendError(404)
            return
        }

        if (courseInstance.hasErrors()) {
            respond courseInstance.errors, view:'edit'
            return
        }

        courseInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Course.label', default: 'Course'), courseInstance.id])
                redirect courseInstance
            }
            '*'{ respond courseInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Course courseInstance) {

        if (courseInstance == null) {
            response.sendError(404)
            return
        }

        courseInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Course.label', default: 'Course'), courseInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }
}
