class ProfilePolicy < ApplicationPolicy
  
  def update?
    user == record.user
  end

end
