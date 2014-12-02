class UserPreferencePolicy < ApplicationPolicy

def index?
  user.present? || user.admin?
end

def new?
  create?
end

def create?
  user.developer?
end

def edit?
  create?
end


end

