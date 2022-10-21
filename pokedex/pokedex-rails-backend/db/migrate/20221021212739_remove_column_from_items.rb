class RemoveColumnFromItems < ActiveRecord::Migration[7.0]
  def change
    remove_column :items, :pokemon_id
    add_column :items, :pokemon, :integer, foreign_key: true, null: false
  end
end
