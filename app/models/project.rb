class Project < ActiveRecord::Base

belongs_to :user

  has_many :user_projects
  has_many :users, through: :user_projects


end
