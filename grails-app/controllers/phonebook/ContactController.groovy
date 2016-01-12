package phonebook

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
        Contact contact = null
        if (params.id) {
            contact =  contactService.get(params.id as long)
        } else {
            contact = new Contact()
        }
        bindData(contact, params)
        contactService.save(contact)
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
        Contact contact = new Contact()
        render view: "contact", model: [contact : contact]
    }

  }