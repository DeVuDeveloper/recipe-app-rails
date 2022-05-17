class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.role == 'admin'
      can :manage, :all
    else
      can :read, Recipe do |recipe|
        recipe.user == user || recipe.public
      end
    end

    can [:update, :destroy], Recipe do |recipe|
      recipe.user == user
    end

    can :read, Food
    can :destroy, Food do |food|
      food.user.id == user.id
    end
    can %i[create], :all
  end
end
