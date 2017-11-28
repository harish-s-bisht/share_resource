package shareresource

class Topic {
    String name
    Date dateCreated
    Date lastUpdated
    enum visibility {Public ,Private}
    static belongsTo = [user: User]
    static hasOne = [resource: Resource]
    static constraints = {
    }
}
