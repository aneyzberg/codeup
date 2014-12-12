FactoryGirl.define do
  factory :project do
    name "Cookies"
    description "test"
    contact_info "test@gmail.com"
    developer_type "front-end"
    payment_amount 200
    due_date "12.2014"
  end
end