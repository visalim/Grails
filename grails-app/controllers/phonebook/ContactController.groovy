package phonebook

import org.springframework.security.access.annotation.Secured

@Secured(['IS_AUTHENTICATED_FULLY'])
class ContactController {

    def contactService

    def index() {
        def contacts = contactService.list()
        render view : "index", model: [contacts : contacts]
    }

    def details() {
        render(view: "details")
    }

    def save() {
        def contact = null
        if (params.id) {
            contact =  contactService.get(params.id as long)
        } else {
            contact = new Contact()
        }
        bindData(contact, params)
        if(contact.validate()){
            contactService.save(contact)
        }else{
            render view:"contact",model:[contact:contact]
            return
        }
        redirect(action: "index")
    }
    def delete(){

        contactService.delete(contact)
        redirect(action: "index")
    }
    def edit(){
        Contact contact = contactService.get(params.id as long)
         render view: "contact", model: [contact : contact]
    }
    def contact(){
        def contact = new Contact()
        render view: "contact", model: [contact : contact]
    }

  }