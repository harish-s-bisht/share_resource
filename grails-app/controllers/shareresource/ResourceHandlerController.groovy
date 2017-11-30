package shareresource

import org.springframework.http.HttpStatus
import org.springframework.security.access.annotation.Secured

@Secured('permitAll')
class ResourceHandlerController {
    def resourceService
    @Secured('permitAll')
    def index() { }

    def createlink(Resource resource){
        bindData(resource,params)
        resourceService.createlink(resource)
        redirect(controller: "user", action: "home", params: ["MSG":"Link Shared Successfully"])
   }
     def topic(Topic topic){
         bindData(topic,params)
         resourceService.topic(topic)
         redirect(controller: "user", action: "home", params: ["MSG":"Topic Created Successfully"])

     }

}
