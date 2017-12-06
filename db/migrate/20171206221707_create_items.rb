class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.string :description
      t.string :string
      t.string :image

      t.timestamps
    end
  end
end
