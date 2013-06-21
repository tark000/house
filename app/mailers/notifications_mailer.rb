class NotificationsMailer < ActionMailer::Base

  default :from => 'testicn1@gmail.com'
  default :to => 'tark000@ukr.net'

  def new_message(message)
    @contact_form = message
    mail(:subject => "[YourWebsite.tld] #{message.name}")
  end

end