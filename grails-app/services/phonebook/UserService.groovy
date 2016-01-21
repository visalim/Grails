package phonebook

import grails.transaction.Transactional

@Transactional
class UserService {

    def save(User user) {
        user.save()

    }
    def list(){
        return User.list()//returning the list of users
    }
    def get(int id){
        return User.get(id)// getting the user object with particular id
    }
    def delete(User user){
        user.delete()
    }
}
