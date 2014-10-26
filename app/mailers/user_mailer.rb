class UserMailer < ActionMailer::Base
  default from: "aneyzberg@codeupnow.com"

  def signup_email(user)
    @user = user
    mail(to: @user.email, subject: 'Thank you for signing up for a project')
  end

  def run(user)

    Self.signup_email(user).deliver_now
  end


end
