class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
       #user ||= User.new # guest user (not logged in)
    user #||= Asignatura.index
        if user.rol == "admin"
          can :manage, :all
        end
         if user.rol == "profesor"
        #else
         can :read, :all
         can :edit, Competency
         can [:update, :create], Asignatura do |asig|
           asig.try(:codigo) == ProfesorPerteneceAsignatura.asinatura_id
           ProfesorPerteneceAsignatura.where("profesore_id like ?", user.id)

         end
         can :edit, ProfesorPerteneceAsignatura do |prof|
           prof.try(:profesore_id) ==  user.id
         end

         can [:update, :create], Prueba

         can :index, Profesore do |prof|
           prof.try(:id) ==  user.id
         end

         can :edit, Profesore do |prof|
           prof.try(:id) ==  user.id
         end
       end
    #
    # The first argument to `can` is the action you are giving the user 
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. 
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end