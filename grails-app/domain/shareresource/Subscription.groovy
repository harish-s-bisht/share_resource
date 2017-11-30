package shareresource

class Subscription {
    Date dateCreated
    User user
    static belongsTo = [topic: Topic]
    enum seriousness{Serious,Very_Serious,Casual}

    static constraints = {
    }
}
