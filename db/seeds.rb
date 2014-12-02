require 'faker'

5.times do
  user = User.new(
    name:        Faker::Name.name,
    email:       Faker::Internet.email, 
    password:    Faker::Lorem.characters(10),
    role: "client"
    )
  user.skip_confirmation!
  user.save
end
users = User.all

5.times do
  user = User.new(
    name:        Faker::Name.name,
    email:       Faker::Internet.email, 
    password:    Faker::Lorem.characters(10),
    role: "developer"
    )
  user.skip_confirmation!
  user.save
end
users = User.all


10.times do
  project = Project.new(
    name: Faker::Lorem.sentence, 
    due_date: Faker::Date.forward(13),
    payment_amount: Faker::Number.digit,
    description: Faker::Internet.url,
    contact_info: Faker::Internet.email,
    developer_type: Faker::Lorem.word
)
  #Rails.logger.info ">>>>>>>>>>>>>>>>>> project: #{project.inspect}"
  project.update_attribute(:created_at, rand(10.minutes .. 1.year).ago)
end
projects = Project.all


admin = User.new(
  name:     'Admin User',
  email:    'admin@example.com',
  password: 'helloworld',
  role:     'admin'
)
admin.skip_confirmation!
admin.save


# Create a moderator
developer = User.new(
  name:     'Developer User',
  email:    'developer@example.com', 
  password: 'devhelloworld',
  role:     'developer'
)
developer.skip_confirmation!
developer.save


# Create a member
client = User.new(
  name:     'Client User',
  email:    'client@example.com',
  password: 'clienthelloworld',
  role: 'client'
)
client.skip_confirmation!
client.save

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Project.count} projects created"