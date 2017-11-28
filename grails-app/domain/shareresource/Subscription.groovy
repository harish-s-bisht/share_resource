package shareresource

class Subscription {
    Date dateCreated
    static hasMany = [user: User,topic: Topic]
    enum seriousness{Serious,Very_Serious,Casual}

    static constraints = {
    }
}
