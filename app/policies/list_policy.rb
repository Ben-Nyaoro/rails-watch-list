class ListPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  # def new?
	# 	true
	# end

	def create?
		true
	end

  def show?
		true		
	end

  # def edit?
	# 	if user == record.user
  #   true
	#   else
  #   false
	#   end
	# end

  def update?
	  user == record.user
	end

  def destroy?
	  user == record.user
	end
end
