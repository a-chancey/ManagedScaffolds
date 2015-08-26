package managedscaffolds

class SitUp {
    static belongsTo = [workout:Workout]

    String name
    int count
    int sets

    static constraints = {
        name (nullable: false, blank: false)
        count(nullable: false, blank: false)
        sets(nullable: false, blank: false)
        workout(nullable: false, blank: false)
    }
}
