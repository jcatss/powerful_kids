class ContactsController < ApplicationController

  def create
    @contact = Contact.create(contact_params)
    flash[:notice] = 'Ваше письмо отправлено!'
    redirect_to action: :index
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :email, :theme, :body)
  end
end
