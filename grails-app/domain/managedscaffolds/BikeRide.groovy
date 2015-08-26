package managedscaffolds


class BikeRide {
    static belongsTo = [workout:Workout]

    String name
    BigDecimal distanceInMiles
    Workout workout

    static constraints = {
        name(nullable: false, blank: false)
        distanceInMiles(nullable: false, blank: false)
    }
}
