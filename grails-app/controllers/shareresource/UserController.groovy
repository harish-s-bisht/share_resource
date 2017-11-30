package shareresource

import org.codehaus.groovy.grails.web.servlet.mvc.GrailsHttpSession
import org.springframework.http.HttpStatus
import org.springframework.security.access.annotation.Secured
import org.springframework.security.core.context.SecurityContext

@Secured('permitAll')
class UserController {
    def springSecurityService
    def userService
    def index() { }


    def create(User user) {
        bindData(user, params,[exclude: ['pass']])
        user.@photoPath="/harish/"
        if(user==null){
            render status: HttpStatus.NOT_FOUND
            return;
        }
        if(user.hasErrors()){
            respond user.errors,view: "../target/work/plugins/spring-security-core-2.0.0/grails-app/views/login/auth.gsp"
            return;
        }
        userService.createUser(user)
        render (view: "../target/work/plugins/spring-security-core-2.0.0/grails-app/views/login/auth.gsp",model: [MSG:"User Account Created Successfully"])
//        render view: "/resourceHandler/home"
    }

    def home(){
            List<Topic> topicList = userService.getAllTopics()
            render(view: "userDashboard", model: [topicList: topicList,
                                                  user:springSecurityService.currentUser],
                                                    MSG: params.MSG)
    }
}
