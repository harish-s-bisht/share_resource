package shareresource

import grails.transaction.Transactional

@Transactional
class UserService {

    def serviceMethod() {

    }

    def createUser(User user){
//        new File(user.BASE_DIR)
        user.save()
    }
    List<Topic> getAllTopics(){
        List<Topic> topicList = Topic.findAll()
    }
}
