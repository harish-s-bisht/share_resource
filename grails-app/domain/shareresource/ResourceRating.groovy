package shareresource

class ResourceRating {
    Integer score

    Resource resource
    User user
    static belongsTo = [resource: Resource]
    static constraints = {
        resource nullable: true
    }
}
