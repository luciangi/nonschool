class UrlMappings {
//------ default controller mapping ------
    static mappings = {
        "/$controller/$action?/$id?(.$format)?" {
            constraints {
                // apply constraints here
            }
        }
//------ landing page ------
        "/"(controller: 'home', action: 'index')
//------ error pages ------
        "500"(view: '/error')
    }
}
