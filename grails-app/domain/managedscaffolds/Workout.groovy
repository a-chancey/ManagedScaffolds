package managedscaffolds

class Workout {
    static hasMany = [bikeRide:BikeRide]

    String name
    static constraints = {
    name(nullable: false, blank: false)
    }
}
