class ProjectPolicy < ApplicationPolicy


  def index?
      true
    end

  def create?
    user.present? && (user.client? || user.admin?)
  end

  def new?
     create?
  end

  def update?
    create?
  end

  def edit?
    create?
  end



  def destroy?
    create?
  end

end