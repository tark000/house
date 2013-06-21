class ContactUsController < ApplicationController

  def new
    @contact_form = ContactForm.new
  end



  def send_email
    @contact_form = ContactForm.new(params[:contact_form])

    respond_to do |format|
      if @contact_form.valid?
      NotificationsMailer.new_message(@contact_form).deliver
        format.js { render :layout => false }
      else
        format.js {render 'new'}
      end
    end
  end


end