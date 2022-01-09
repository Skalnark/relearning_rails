class ContactController < ApplicationController
    def index
        @contact = Contact.all 
        render json: @contact
    end 

    def show
        @contact = Contact.find(params[:id])
        render json: @contact
    end 

    def create
        @new_contact = Contact.create!(
            name: params[:name],
            phone_type: params[:phone_type],
            phone_number: params[:phone_number],
            contact_lists_id: params[:contact_lists_id],
        )

        @new_contact.save
        render json: @new_contact
    end 

    def update
        @contact = Contact.find(params[:id])
        @contact.update(
            name: params[:name],
            phone_type: params[:phone_type],
            phone_number: params[:phone_number]
        )
        render json: @contact
    end 

    def destroy
        @contacts = Contact.all 
        @contact = Contact.find(params[:id])
        @contact.destroy
        render json: @contacts
    end 
end
