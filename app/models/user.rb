class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  has_many :projects

  has_many :user_preferences
  
  has_many :user_projects
  has_many :dev_projects, class_name:"Project", through: :user_projects


  ROLES = ["client", "developer"]  # User::ROLES

  def client?
    role == "client"
  end   

  def developer?
    role =="developer"
  end  

  def admin?
    role == "admin"
  end

   def role? (baserole)
    baserole == role
  end
    
end