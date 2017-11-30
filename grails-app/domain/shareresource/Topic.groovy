package shareresource

class Topic {
    String name
    Date dateCreated
    Date lastUpdated
    String visibility
    static belongsTo = [user: User]
    static hasMany = [resources: Resource,subscriptions: Subscription]
    static constraints = {
        dateCreated nullable: true
        lastUpdated nullable: true
    }
}
