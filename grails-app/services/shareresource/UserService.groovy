package shareresource

import grails.transaction.Transactional

@Transactional
class UserService {

    def serviceMethod() {

    }

    def createUser(User user){
        user.save()
    }
}
