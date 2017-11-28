package co
import shareresource.User
class UserCO {
    String username
    String password
    String firstName
    String lastName
    Boolean admin
    Boolean active
    Date dateCreated
    Date lastUpdated
    String email

    static constraints={
        importFrom User
    }
}
