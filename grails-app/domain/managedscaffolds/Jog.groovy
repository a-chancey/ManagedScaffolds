package managedscaffolds

class Jog {
    static belongsTo = [workout:Workout]

    String name
    BigDecimal distanceInMiles
    Workout workout
    Date jogDate

    static constraints = {
        name(nullable: false, blank: false)
        distanceInMiles(nullable: false, blank: false)
        jogDate(nullable: false, blank: false)
        workout(nullable: false, blank: false)
    }
}
