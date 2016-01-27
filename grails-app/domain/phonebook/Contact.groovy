package phonebook

class Contact {
    String name
    String email
    String mobile

    User user  // this will create the userid in contact table.

    static constraints = {
        name unique:true,nullable:false,blank:false
        email unique:true,nullable:false,blank:false
        mobile unique:true,nullable:false,blank:false
    }
}
