class ContactMailer < ApplicationMailer
  default from: 'madmacj@gmail.com'
  layout 'mailer'

  def send_message(contact)
    @email = contact.email
    @subject = contact.theme
    @name = contact.name
    @body = contact.body
    mail(:to => @email, :subject => @subject)
  end
end
