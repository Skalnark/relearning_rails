class ContactListController < ApplicationController
    def index
        @contactList = ContactList.all 
        render json: @contactList
    end 

    def show
        @contactList = ContactList.find(params[:id])
        render json: @contactList
    end 

    def create
        @contactList = ContactList.create(
            list_name: params[:list_name],
        )
        render json: @contactList
    end 

    def update
        @contactList = ContactList.find(params[:id])
        @contactList.update(
            list_name: params[:list_name],
        )
        render json: @contactList
    end 

    def destroy
        @contactLists = ContactList.all 
        @contactList = ContactList.find(params[:id])
        @contactList.destroy
        render json: @contactLists
    end 
end
