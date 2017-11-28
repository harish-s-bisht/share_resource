package shareresource

class ResourceRating {
    Integer score

    Resource resource
    User user
    static hasOne = [resource: Resource]
    static constraints = {
    }
}
