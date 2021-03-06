class ContactsController < ApplicationController

  before_action :authenticate_user!
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  def index
    @contacts = Contact.all
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
    @contact = current_user.contacts.build
  end

  def edit
  end

  def create
    @project = Project.find(params[:project_id])
    @contact = current_user.contacts.build(contact_params)
    @contact.project_id = @project.id

    if @contact.save
      redirect_to @project, notice: 'Success'
    else
      render :new
    end
  end

  def update
    if @contact.update(contact_params)
      redirect_to @contact, notice: 'Contact was successfully updated'
    else
      render :edit
    end
  end

  def destroy
    @contact.destroy
    redirect_to root_path, notice: 'Contact successfully deleted'
  end

  private
    def set_contact
      @contact = Contact.find(params[:id])
    end

    def contact_params
      params.require(:contact).permit(:first_name, :last_name, :mobile_number, :home_number)
    end
end
