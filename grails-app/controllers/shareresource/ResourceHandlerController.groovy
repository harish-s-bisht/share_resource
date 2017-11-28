package shareresource

import org.springframework.security.access.annotation.Secured

@Secured('permitAll')
class ResourceHandlerController {
    def resourceService
    @Secured('permitAll')
    def index() { }
    @Secured('permitAll')
    def create(Resource resource){
        bindData(resource,params)
        resourceService.create(resource)
        render (view:"/user/userDashboard",model: [MSG:"Link Shared Successfully"])
    }


}
