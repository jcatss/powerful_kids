class Contact < ApplicationRecord
  after_create :send_email

  def send_email
    ContactMailer.send_message(self).deliver
  end
end
