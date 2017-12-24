class Item < ApplicationRecord
  def as_json
    {
    id: id,
    name: name,
    price: price,
    description: description, 
    image: image
    }
  end

end
