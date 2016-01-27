package phonebook

import grails.plugin.springsecurity.annotation.Secured
@Secured(['IS_AUTHENTICATED_FULLY'])
class ContactController {

    def contactService
    def springSecurityService

    def index() {
        def contacts = contactService.list(springSecurityService.currentUser )
        render view : "index", model: [contacts : contacts]
    }

    def details() {
        def contact = null
        contact = contactService.get(params.id as long,springSecurityService.currentUser)//will get the id that we are passing from the link
        render view: "details", model: [contact: contact]
    }

    def save() {
        def contact = null
        if (params.id) {
            contact =  contactService.get(params.id as long,springSecurityService.currentUser) //here we are getting the id of the contact that we are entering in the contact form
        } else {
            contact = new Contact()
        }
        bindData(contact, params) // setting the parameters like name,email,mobile
        contact.user = springSecurityService.currentUser  // setting the object currentUser so it takes the primary key of object and set it as foreign key in the contact table
        if(contact.validate()){           //will validate the contact as per the constraints in domain class
            contactService.save(contact)
        }else{
            render view:"contact",model:[contact:contact]
            return
        }
        redirect(action: "index")
    }
    def delete(){

        Contact contact = contactService.get(params.id as long,springSecurityService.currentUser) //passing the id along with the user that is logged in
        if(contact == null){
            flash.message = "contact doesnot exists"//to display the error message if contact doesnot exists
            chain action:"index"
            return
        }
        contactService.delete(contact)
        chain(action: "index")
    }
    def edit(){
        Contact contact = contactService.get(params.id as long,springSecurityService.currentUser)
         render view: "contact", model: [contact : contact]
    }
    def contact(){
        def contact = new Contact()
        render view: "contact", model: [contact : contact]
    }

  }