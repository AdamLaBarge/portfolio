class ApplicationController < ActionController::Base
  def index
    @contact_form = ContactForm.new
  end
end
