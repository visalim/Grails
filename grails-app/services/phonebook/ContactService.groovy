package phonebook

import grails.transaction.Transactional


@Transactional
class ContactService {



    def save(Contact contact) {
        contact.save()
    }

    def list(User user) {
        return Contact.findAllByUser(user)
    }
    def delete(Contact contact){
        contact.delete()
    }
    def get(long id, User user){
         return Contact.findByIdAndUser(id, user) //returns contact with particular id and user
    }

}
