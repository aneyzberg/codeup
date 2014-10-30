class UserProjectPolicy < ApplicationPolicy

  def create?
   new?
  end

  def new?
    user.developer? || user.admin?
  end
end