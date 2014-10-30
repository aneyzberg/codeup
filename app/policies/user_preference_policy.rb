class UserPreferencePolicy < ApplicationPolicy

def index?
  true
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

