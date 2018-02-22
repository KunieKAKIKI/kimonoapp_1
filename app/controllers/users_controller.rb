class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show, :index, :choicelist, :favoritelist]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @coordinates = Coordinate.where(user_id: @user.id)
  end

  def choicelist
    @coordinate = Coordinate.find(params[:coordinate_id])
    @user = current_user
    @items = Item.where(user_id: @user.id).group_by(&:category_id)
  end

  def favoritelist
    @user = current_user
    @favorite_coordinates = @user.favorite_coordinates
  end

end
