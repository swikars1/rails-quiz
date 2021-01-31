# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:

    user ||= User.new # guest user (not logged in)
    if user.superadmin_role?
      can :manage, :all
    end
    if !user.superadmin_role?
      can :read, :all
      cannot :manage, User
    end
  end
end
