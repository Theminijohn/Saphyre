class ContactsController < ApplicationController

  before_action :authenticate_user!
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  def index
    @contacts = Contact.all
  end

  def show
  end

  def new
    @contact = current_user.contacts.build
  end

  def edit
  end

  def create
    @contact = current_user.contacts.build(contact_params)
    @contact.save
  end

  def update
    @contact.update(contact_params)
  end

  def destroy
    @contact.destroy
  end

  private
    def set_contact
      @contact = Contact.find(params[:id])
    end

    def contact_params
      params.require(:contact).permit(:first_name, :last_name)
    end
end
