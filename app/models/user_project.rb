class UserProject < ActiveRecord::Base
  belongs_to :user
  belongs_to :project


 after_create :send_user_signup_email


 private

 def send_user_signup_email
      UserPreferencesMailer.new_sign_up(self.project, self.user).deliver
  end

end

