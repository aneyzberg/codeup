require 'rails_helper'

feature "SmokTest" do
  scenario "see wecome page" do
    visit root_path

    expect(page).to have_content("Code Up")
  end
end 
