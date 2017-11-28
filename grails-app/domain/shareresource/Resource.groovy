package shareresource

class Resource {
    String description
    Date dateCreated
    Date lastUpdated
    User createdBy

    static belongsTo = [resourceRating: ResourceRating,
                        readingItem: ReadingItem,
                        topic: Topic]

    static constraints = {
    }
}
