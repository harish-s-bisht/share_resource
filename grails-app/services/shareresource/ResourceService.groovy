package shareresource
import shareresource.Resource;
import shareresource.Topic;
import shareresource.User;
import shareresource.Subscription
import shareresource.ReadingItem
import shareresource.ResourceRating
import shareresource.LinkResource
import shareresource.DocumentResource
import shareresource.ReadingItem



import grails.transaction.Transactional

@Transactional
class ResourceService {

    def serviceMethod() {

    }
    def createlink(Resource resource){
        resource.setDateCreated(new Date())
        resource.setLastUpdated(new Date())
        if(!resource.save()){
            resource.errors.allErrors.each {
                println it
            }
        }
    }

    def getTopic(int id){
        return Topic.get(id)
    }
    def topic(Topic topic){
        topic.setDateCreated(new Date())
        topic.setLastUpdated(new Date())
        if(!topic.save()){
            topic.errors.allErrors.each {
                println it
            }
        }
    }


}
