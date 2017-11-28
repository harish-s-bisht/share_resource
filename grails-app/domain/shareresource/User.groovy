package shareresource

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString

@EqualsAndHashCode(includes='username')
@ToString(includes='username', includeNames=true, includePackage=false)
class User implements Serializable {

	private static final long serialVersionUID = 1

	transient springSecurityService

	String username
	String password
	String firstName
	String lastName
	Boolean admin
	Boolean active
	Date dateCreated
	Date lastUpdated
	String email

	static hasMany = [topics:Topic,
					  resourceRatings: ResourceRating,
					  readingItems: ReadingItem]
	String photoPath



	User(String username, String password) {
		this()
		this.username = username
		this.password = password
	}

	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this)*.role
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : password
	}

	static transients = ['springSecurityService']

	static constraints = {
		username unique: true,nullable: false
		firstName nullable: false
		lastName nullable: false
		password nullable: false
		email nullable: false,unique: false
		admin nullable: true
		active nullable: true
		dateCreated nullable: true
		lastUpdated nullable: true
	}

	static mapping = {
//		version false
		password column: '`password`'
	}
}
