class ContactFormController < ApplicationController
  def create
    @email = params[:contact_form][:email]
    @message = params[:contact_form][:message]

    flash[:notice] = 'Thank you for your message. I will get back to you soon.'
    redirect_to root_path
  end
end
