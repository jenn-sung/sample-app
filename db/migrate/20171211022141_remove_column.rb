class RemoveColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :items, :string, :string
  end
end
