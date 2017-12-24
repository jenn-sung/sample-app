class ItemsController < ApplicationController
  def index
    items = Item.all
    render json: items.as_json
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


end
