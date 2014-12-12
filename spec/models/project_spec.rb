require 'rails_helper'

describe "Project" do
  
  it "is valid with project name, description, due_date, payment_amount, and developer_type" do

    project = create(:project)

    # project = Project.new(
    # name: 'Cookies',
    # description: 'test',
    # contact_info: 'myproject@gmail.com',
    # developer_type: 'front-end',
    # payment_amount: 200,
    # due_date: '12.2014')

    expect(project).to be_valid
  end


end
