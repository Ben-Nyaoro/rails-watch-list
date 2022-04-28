class MoviePolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def show?
	  true
  end

  def create?
		true
	end

  # def edit?
	# 	true
	# end

  def update?
		user_is_owner_or_admin?
	end

  def destroy?
		user_is_owner_or_admin?
	end

  private

  def user_is_owner_or_admin?
		user == record.user
	end
end
