package shareresource

import org.springframework.security.access.annotation.Secured

@Secured('permitAll')
class ResourceHandlerController {
    @Secured('permitAll')
    def index() { }

}
