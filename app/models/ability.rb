class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= Admin.new
    if user.super_admin?
      can :manage, :all
    # else
      # can :manage, [Cliente, Pagina]
    end
  end
end
