package phonebook

import grails.transaction.Transactional

@Transactional
class UserService {

    def save(User user) {
        user.save()

    }
    def login(){

    }

}
