class Project < ActiveRecord::Base


  belongs_to :user  # guy or gal who created it

  has_many :user_projects
  has_many :users, through: :user_projects

  default_scope { order('created_at DESC')}



  MAX_AVAILABLE = 10   # Project::MAX_AVAILABLE

  def available_slots?
    users.count < MAX_AVAILABLE
  end

end
