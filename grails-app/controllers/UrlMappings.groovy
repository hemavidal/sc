class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller:"igreja") {
            
        }
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
