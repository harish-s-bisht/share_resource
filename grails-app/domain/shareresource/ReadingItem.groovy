package shareresource

class ReadingItem {
    Boolean isRead
    User user
    static belongsTo = [resource: Resource]
    static constraints = {
        resource nullable: true

    }
}
