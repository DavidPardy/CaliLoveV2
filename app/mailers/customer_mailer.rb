class CustomerMailer < ActionMailer::Base
  default from: "calove.help@gmail.com"

  #def registration_confirmation(user)
  def received(order, email)
  	@cart = order
  	@customer = email
  	#@customer = cust
    #@customer = user
    #attachments["rails.png"] = File.read("#{Rails.root}/public/images/rails.png")
    #mail to: "dpardy87@gmail.com"
    #mail(:to => "#{user}", :subject => "Your California Love Order")
    mail to: "#{email}"
  end

  # def email_sent(user)
  # 	@customer = user
  # 	mail(:to => "#{user}", :subject => "Your California Love Order")
  # end
end
