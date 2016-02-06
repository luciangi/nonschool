package nonschool.core

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Item)
class ItemSpec extends Specification {

    Item item = new Item()
    Resource resource = new Resource()
    static final String TITLE = 'title'


    def setup() {
    }

    def cleanup() {
    }

    void "item test"() {
        given:
        item.title = 'title'
        item.resourceList.push(resource)

        when:true

        then:
        assert item.title == TITLE
        assert item.resourceList.get(0) == resource
    }
}
