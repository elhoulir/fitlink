class GymPolicy < ApplicationPolicy
  
  def index?
    true
  end

  def update?
    user == record.user #if user owns gym record then true else false
  end

  def book?
    user != record.user # you can't book if you are the owner
  end

end
