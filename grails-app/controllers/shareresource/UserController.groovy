package shareresource

import org.springframework.security.access.annotation.Secured

@Secured('permitAll')
class UserController {

    def userService
    def index() { }

    def create(User user) {
        bindData(user, params,[exclude: ['pass']])
        user.@photoPath="/harish/"
        userService.createUser(user)
        render view: "../target/work/plugins/spring-security-core-2.0.0/grails-app/views/login/auth.gsp"
//        render view: "/resourceHandler/home"
    }
//    @Secured('permitAll')
    def dashboard(){
        render view: "userDashboard"
    }
}
