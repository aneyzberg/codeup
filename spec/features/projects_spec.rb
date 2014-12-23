require 'rails_helper'

feature 'Projects' do
  
  before do
    @user = create(:user)
    visit root_url
    log_in_with @user

  end

  scenario "create project" do
    create_project

    expect(page).to have_content("Project was successfully created")

  end


  def log_in_with (user)
    visit root_path
    click_on "Sign In"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Log in"
  end

  def create_project
    visit new_project_path
    fill_in "Name", with: "title"
    fill_in "Payment amount", with: 200.00
    fill_in "Description", with: "test"
    fill_in "Contact info", with: "test@test.com"
    fill_in "Developer type", with: "test"
    click_button "Create Project"
  end


end
