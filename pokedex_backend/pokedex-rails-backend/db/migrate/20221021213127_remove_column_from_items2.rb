class RemoveColumnFromItems2 < ActiveRecord::Migration[7.0]
  def change
    remove_column :items, :pokemon
    add_reference :items, :pokemon, foreign_key: true, null: false
  end
end
