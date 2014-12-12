require 'rails_helper'

feature "Authorizations" do

  before do
    @user = build(:user)
    puts ">>>>>>>>>>> user: #{@user.inspect}"
  end

  scenario "sign up" do 
    create_user(@user)   
    expect(page).to have_content("A message with a confirmation link has been sent to your email address. Please open the link to activate your account.")
  end

  scenario "log in" do
    visit root_path      
      @user.save

      log_in_with  @user
 
      expect(page).to have_content("Signed in successfully")
   end

   scenario "log out" do
     @user.save
     log_in_with @user
    
     log_out

     expect(page).to have_content("Signed out successfully")

   end




  def create_user (user)
    
    visit root_path
    click_on "Sign up"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    fill_in "Password confirmation", with: user.password
    click_button "Sign up"

  end

  def log_in_with (user)
    visit root_path
    click_on "Sign In"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Log in"
  end

  def log_out
    visit root_path
    click_on "Sign out"
  end
end  
