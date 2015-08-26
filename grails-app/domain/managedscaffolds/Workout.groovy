package managedscaffolds

class Workout {
    static hasMany = [bikeRides:BikeRide, sitUps:SitUp, jogs:Jog]

    String name
    static constraints = {
    name(nullable: false, blank: false)
    }
}
