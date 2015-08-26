package managedscaffolds

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(SitUp)
class SitUpSpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }

    void "test something"() {
        given:
        Workout work = new Workout(name: "aaron")
        SitUp situp = new SitUp(name: "Sit up",
                count: 1,
                sets: 1,
                workout: work)
        when:
        situp.save()

        then:
        situp.validate()

    }
}
