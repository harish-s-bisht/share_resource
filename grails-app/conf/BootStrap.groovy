import shareresource.LinkResource
import shareresource.ReadingItem
import shareresource.Resource
import shareresource.ResourceRating
import shareresource.Role
import shareresource.Subscription
import shareresource.Topic
import shareresource.User
import shareresource.UserRole

class BootStrap {

    def init = { servletContext ->
        User user=  new User(username: "harish",password: "bisht",firstName: "harish",lastName: "singh",
                email: "harish@nexthoughts.com",photoPath: "/harish/path").save()
        Role role=new Role(authority: "ROLE_USER").save()
        UserRole.create(user,role)
        User us = User.get(1)
        if(Topic.get(1)==null){
            Topic topic = new Topic(name:"Grails",dateCreated: new Date(),lastUpdated: new Date(),user: us,visibility: "Public")
            if(!topic.save()) {
                topic.errors.allErrors.each {
                    println it
                }
            }
        }
        Topic tp = Topic.get(1)
        Subscription subscription1 = Subscription.get(1)
        Subscription subscription = new Subscription(user: us,topic: tp,dateCreated: new Date())
        if(subscription1==null){
            if(!subscription.save()){
                subscription.errors.allErrors.each {
                    println it
                }
            }

        }
        Resource resource1 = Resource.get(1)
        Resource resource;
        if(resource1==null){
            LinkResource lr = new LinkResource(url: "https://grails.github.io/grails2-doc/2.5.4/guide/single.html#GORM")
            resource = new Resource(description: "Grails docs.",dateCreated: new Date(),lastUpdated: new Date(),
                    createdBy: us,topic: tp,class:lr,url: lr.getUrl())
            if(!resource.save()){
                resource.errors.allErrors.each {
                    println it
                }
            }
        }
        if(ResourceRating.get(1)==null){
            ResourceRating rr = new ResourceRating(user: us,topic:tp,score: 4,resource: resource)
            if(!rr.save()){
                rr.errors.allErrors.each {
                    println it
                }
            }
        }
        if(ReadingItem.get(1)==null){
            ReadingItem ri = new ReadingItem(isRead: true,user:us,resource: resource)
            if(!ri.save()){
                ri.errors.allErrors.each {
                    println it
                }
            }
        }
    }

    def destroy = {
    }
}
