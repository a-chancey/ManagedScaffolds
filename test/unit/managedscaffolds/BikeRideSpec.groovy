package managedscaffolds

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(BikeRide)
class BikeRideSpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }

    void "test something"() {
        given:
        Workout work = new Workout(name: "aaron")
        BikeRide ride = new BikeRide(name: "Bike Ride",
                                    distanceInMiles: new BigDecimal(10),
                                    workout: work)
        when:
        ride.save()

        then:
        ride.validate()


    }
}
