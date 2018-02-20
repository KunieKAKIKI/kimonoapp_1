class ChoicesController < ApplicationController
  def create
    @item = Item.find(params[:item_id])
    choice = @item.choices.create(coordinate_id: params[:coordinate_id])
    @choice = @item.choices.find_by(coordinate_id: params[:coordinate_id])
    redirect_to choicelist_url
  end

  def destroy
    @item = Item.find(params[:id])
    choice = @item.choices.find_by(coordinate_id: params[:coordinate_id]).destroy
    redirect_to choicelist_url
  end
end
