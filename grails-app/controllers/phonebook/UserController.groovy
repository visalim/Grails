package phonebook

import org.springframework.security.access.annotation.Secured

@Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
class UserController {

    def userService

    def signup() {
        render view: "signup"
    }

    def save() {
        User user = new User()
        bindData(user, params)  // will bind the parameter contents with the contact object
        if (user.validate()) {
            userService.save(user)
        }else{
            render view:"login"
            return

        }
       redirect controller:"login"
    }
}