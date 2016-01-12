package phonebook

class User {
    String name
    String password
    String email

    static constraints = {
        name nullable:false, blank: false
        password nullable: false, blank: false,size:5..12
        email nullable: false, blank: false, unique: true
    }
}
