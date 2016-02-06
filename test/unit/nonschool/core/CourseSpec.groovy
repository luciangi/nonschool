package nonschool.core

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Course)
class CourseSpec extends Specification {

    Course course = new Course()
    Item item = new Item()

    static final String TITLE = "Title"


    def setup() {

    }

    def cleanup() {
    }

    void "course test"() {
        given:
        course.title = 'Title'
        course.itemList.push(item)

        when:
        course.title == TITLE

        then:
        assert course.itemList.get(0) == item
    }

}
