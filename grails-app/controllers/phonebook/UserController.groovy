package phonebook

class UserController {

    def userService

    def signup(){
        render(view:"signup")
    }
    def login(){
        render view: "login"
    }
    def save(){
        println("hi")
        def user = new User(params)
        if(user.validate()){
            userService.save(user)
        }
        else{
            user.errors.allErrors.each{
                print it
            }
        }
        render view:"signup" ,model:[user: user]
    }

}
