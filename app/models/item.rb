class Item < ApplicationRecord
  def as_json
    {
    name: name,
    price: price,
    description: description, 
    image: image
    }
  end

end
