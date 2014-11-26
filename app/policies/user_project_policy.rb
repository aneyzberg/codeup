class UserProjectPolicy < ApplicationPolicy

  def create?
   new?
  end

  def new?
    user.present? && (user.developer? || user.admin?)
  end
end