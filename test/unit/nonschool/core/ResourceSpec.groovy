package nonschool.core

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Resource)
class ResourceSpec extends Specification {

    Resource resource = new Resource()

    static final String NAME = 'resource name'

    def setup() {
    }

    def cleanup() {
    }

    void "resource test"() {
        given:
        resource.name = 'resource name'

        when:
        true

        then:
        assert resource.name == NAME
    }
}
