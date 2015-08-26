class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: "workout", action: "index")
        "/workout/bikeRide"(controller: "bikeRide", action: "create")
        "500"(view:'/error')
	}
}
