package nonschool.core


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = false)
class ItemController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    def itemService

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        List<Item> items = Item.list(params)
        if(params.keySet().contains('searchCriteria')){
            items = itemService.searchItems(params['searchCriteria'].toString())
        }
        items = itemService.sortByBloomSpiral(items)
        respond items, model: [itemInstanceCount: items.size()]
    }

    def addToCourse(Item itemInstance){
        if(!params.keySet().contains('courseId'))return;
        Course course = Course.findById(params['courseId'])
        course.addToItemList(itemInstance)
        course.save(flush: true, failOnError: true)
        redirect controller: 'course', action: 'show', params: [id: course.id]
    }

    def show(Item itemInstance) {
        if (itemInstance == null) {
            response.sendError(404)
            return
        }
        respond itemInstance
    }

    def create() {
        respond new Item(params)
    }

    @Transactional
    def save(Item itemInstance) {
        if (itemInstance == null) {
            response.sendError(404)
            return
        }

        if (itemInstance.hasErrors()) {
            respond itemInstance.errors, view: 'create'
            return
        }

        itemInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.success = message(code: 'item.created.message', args: [itemInstance.title])
                redirect itemInstance
            }
            '*' { respond itemInstance, [status: CREATED] }
        }
    }

    def edit(Item itemInstance) {
        respond itemInstance
    }

    @Transactional
    def update(Item itemInstance) {
        if (itemInstance == null) {
            response.sendError(404)
            return
        }

        if (itemInstance.hasErrors()) {
            respond itemInstance.errors, view: 'edit'
            return
        }

        itemInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.success = message(code: 'item.updated.message', args: [itemInstance.title])
                redirect itemInstance
            }
            '*' { respond itemInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Item itemInstance) {

        if (itemInstance == null) {
            response.sendError(404)
            return
        }

        itemInstance.courseList.each {
            it.removeFromItemList(itemInstance)
            it.save(flush: true)
        }
        itemInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.success = message(code: 'item.deleted.message', args: [itemInstance.title])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }
}
