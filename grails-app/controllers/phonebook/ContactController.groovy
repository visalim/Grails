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
        def contact = null
        contact = contactService.get(params.id as long)//will get the id that we are passing from the link
        render view: "details", model: [contact: contact]
    }

    def save() {
        def contact = null
        if (params.id) {
            contact =  contactService.get(params.id as long) //here we are getting the id of the contact that we are entering in the contact form
        } else {
            contact = new Contact()
        }
        bindData(contact, params)
        if(contact.validate()){           //will validate the contact as per the constraints in domain class
            contactService.save(contact)
        }else{
            render view:"contact",model:[contact:contact]
            return
        }
        redirect(action: "index")
    }
    def delete(){
        Contact contact = contactService.get(params.id as long)
        if(contact == null){
            flash.message = "contact doesnot exists"//to display the error message if contact doesnot exists
            chain action:"index"
            return
        }
        contactService.delete(contact)
        chain(action: "index")
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