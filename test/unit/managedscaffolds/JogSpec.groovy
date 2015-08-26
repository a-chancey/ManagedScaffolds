package managedscaffolds

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Jog)
class JogSpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }

    void "test something"() {
        given:
        Workout work = new Workout(name: "aaron")
        Jog jog = new Jog(name: "Jog",
                distanceInMiles: new BigDecimal(10),
                workout: work,
                jogDate: '12/1/2014')
        when:
        jog.save()

        then:
        jog.validate()

    }
}
