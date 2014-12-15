
FactoryGirl.define do
  factory :user_project do
    user
    project

    after(:build) do |user_project|
      user_project.class.skip_callback(:create, :after, :send_user_signup_email)
    end  
  end
end