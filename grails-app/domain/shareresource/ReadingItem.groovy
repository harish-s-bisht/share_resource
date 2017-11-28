package shareresource

class ReadingItem {
    Boolean isRead
    static hasMany = [users: User]
    static hasOne = [resource: Resource]
    static belongsTo = [User]
    static constraints = {
    }
}
