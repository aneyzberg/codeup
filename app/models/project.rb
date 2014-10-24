class Project < ActiveRecord::Base

belongs_to :user

  has_many :dev_projects
  has_many :user_devs, through: :dev_projects


end
