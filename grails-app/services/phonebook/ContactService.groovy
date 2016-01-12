package phonebook

import grails.transaction.Transactional

@Transactional
class ContactService {

    def save(Contact contact) {
        contact.save()
    }

    def list() {
        return Contact.list()
    }
    def delete(Contact contact){
        contact.delete()
    }
    def get(long id){
         return Contact.get(id)
    }

}
