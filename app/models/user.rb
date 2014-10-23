class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  has_many :projects
  has_many :user_devs


  ROLES = ["client", "developer"]  # User::ROLES

  def client?
    role == "client"
  end   

  def developer?
    role =="developer"
  end  
    
end