class Welcome < ActionMailer::Base
  default from: "from@example.com"


  def welcome_user(resource)
  	@user = resource
    mail(to: "#{@user.email}", subject: "Welcome mail")
  end
end
