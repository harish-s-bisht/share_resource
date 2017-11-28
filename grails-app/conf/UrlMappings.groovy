class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/home")
        "500"(view:'/error')
        "/login/$action?"(controller: "login")
        "/logout/$action?"(controller: "logout")
        "/create"(controller: "user", action: "create" ,method: "POST")
        "/home"(controller: "user", action: "dashboard")
	}
}
