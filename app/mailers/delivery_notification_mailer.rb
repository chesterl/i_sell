class DeliveryNotificationMailer < ApplicationMailer
  default from: 'neil@sydney.com'
  layout 'mailer'

  def welcome(person)
    @greeting = "Hi"
    @person = person
    mail(to: 'neilparikh107@hotmail.com', subject:'Enquiry')
  end
end
