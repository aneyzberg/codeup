require 'rails_helper'

  describe "User Project" do
    
    it "is valid with user and project" do

      user_project = create(:user_project)

      expect(user_project).to be_valid
    end

    
  end