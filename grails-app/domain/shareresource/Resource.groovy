package shareresource

import javax.persistence.Transient

class  Resource implements Serializable {
    String description
    Date dateCreated
    Date lastUpdated
    User createdBy

    static belongsTo = [topic: Topic]
    static hasMany = [resourceRating:ResourceRating]
    static hasOne = [readingItem: ReadingItem]
    static constraints = {
        readingItem nullable: true
//        topicId nullable: true
//        createdBy nullable: true
        /*resourceRatingId nullable:true
        readingItemId nullable: true
        topicId nullable: true*/

    }
}
