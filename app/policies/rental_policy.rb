class RentalPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      Rental.where(user_id: @user.id)
    end
  end

  def show?
    @record.user_id == @user.id ||  @record.owner_id == @user.id
  end

  def create?
    @record.user != @user
  end

  def new?
    create?
  end

  def return?
    show?
  end

  private

  def confirm_user
    @record.user == @user
  end
end
