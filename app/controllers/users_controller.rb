class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def choicelist
    #@coordinate = Coordinate.find(params[:coordinate_id])
    @user = current_user
    @items = Item.where(user_id: @user.id)
  end

  def favoritelist
    @user = current_user
    @favorite_coordinates = @user.favorite_coordinates
  end

end
