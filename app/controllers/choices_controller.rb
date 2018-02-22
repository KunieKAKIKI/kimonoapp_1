class ChoicesController < ApplicationController
  def create
    @item = Item.find(params[:item_id])
    @coordinate = Coordinate.find(params[:coordinate_id])
    choice = @item.choices.create(coordinate_id: @coordinate.id)
    redirect_to choicelist_path(coordinate_id: @coordinate.id)
  end

  def destroy
    @choice = Choice.find_by(id: params[:id])
    @item = Item.find_by(id: @choice.item_id)
    @coordinate = Coordinate.find_by(id: @choice.coordinate_id)
    choice = @item.choices.find_by(coordinate_id: @coordinate.id).destroy
    redirect_to choicelist_path(coordinate_id: @coordinate.id)
  end
end
