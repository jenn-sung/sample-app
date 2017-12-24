class ItemsController < ApplicationController
  def index
    items = Item.all
    render json: items.as_json
  end

  def show
    item = Item.find_by(id: params[:id])
    render json: item.as_json
  end

  def create
    item = Item.new(
      name: params['name'],
      price: params['price'],
      description: ['description'],
      image: params['image']
      )
    item.save
    render json: item.as_json
  end

  def update
    item = Item.find_by(id: the_id)
    item.update(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      image: params[:image]
      )
    render json: item.as_json
  end

  def destroy
    item = Item.find_by(id: params[:id])
    item.destroy
    render json: {message: "Item successfully destroyed"}
  end
  
end
