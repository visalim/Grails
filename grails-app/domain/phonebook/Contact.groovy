package phonebook

class Contact {
    String name
    String email
    String mobile


    static constraints = {
        name unique:true,nullable:false,blank:false
        email unique:true,nullable:false,blank:false
        mobile unique:true,nullable:false,blank:false
    }
}
