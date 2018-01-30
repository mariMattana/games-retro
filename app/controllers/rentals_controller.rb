class RentalsController < ApplicationController
  def index
    @owner_rentals = Rental.owner_rentals(current_user)
    @user_rentals = policy_scope(Rental)
  end

  def show
    set_rental
    authorize @rental
  end

  def new
    @game = Game.find(params[:game_id])
    @rental = Rental.new
    authorize @rental
  end

  def create
    @rental = Rental.new(game_id: params[:game_id])
    authorize @rental
    @game = Game.find(params[:game_id])
    @rental.owner_id = @game.user_id
    @rental.user = current_user
    if @rental.save
      redirect_to rental_path(@rental)
    else
      render :new
    end
  end

  private

  def game_params
    params.require(:rental).permit(:game_id)
  end

  def set_rental
    @rental = Rental.find(params[:id])
  end
end
