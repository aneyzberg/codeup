# Read about factories at https://github.com/thoughtbot/factory_girl
FactoryGirl.define do
  factory :user do
    name "Anna Neyzberg"
    sequence(:email, 100) {|n| "person#{n}@example.com"}
    password "helloworld"
    password_confirmation "helloworld"
    role "client"
    confirmed_at Time.now
  end
end


