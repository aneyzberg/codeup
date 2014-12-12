require 'rails_helper'

describe "User" do

  it "is valid with a name, email, password, and role" do
     
    user = User.new(
    name: 'Anna Neyzberg', 
    email: 'test@example.com',
    password: 'testtest',
    role: 'developer')

    expect(user).to be_valid
  end
end
