class FavoritesController < ApplicationController
  def create
    favorite = current_user.favorites.create(coordinate_id: params[:coordinate_id])
    redirect_to coordinate_path(id: params[:coordinate_id]), notice: "お気に入り登録しました"
  end

  def destroy
    favorite = current_user.favorites.find_by(coordinate_id: params[:coordinate_id]).destroy
    redirect_to coordinate_path(id: params[:coordinate_id]), notice: "お気に入り解除しました"
  end
end
