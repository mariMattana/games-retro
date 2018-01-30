class GamePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      Game.all
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def create?
    true
  end

  def new?
    create?
  end

  def update?
    confirm_user
  end

  def edit?
    update?
  end

  def destroy?
    confirm_user
  end

  def user_not_owner?
    @record.user_id != @user.id
  end

  private

  def confirm_user
    @record.user == @user
  end
end
