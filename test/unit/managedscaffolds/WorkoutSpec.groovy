package managedscaffolds

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Workout)
class WorkoutSpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }

    void "test workout"() {
        given:
        Workout workout = new Workout(name: "Test 1")
        workout.save()

        when:
        def id = workout.id

        then:
        Workout retrievedWorkout = Workout.get(id)
        retrievedWorkout.name.equals "Test 1"

    }
}
