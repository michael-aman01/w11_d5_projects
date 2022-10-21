# == Schema Information
#
# Table name: pokemons
#
#  id         :bigint           not null, primary key
#  number     :integer          not null
#  name       :string           not null
#  attack     :integer          not null
#  defense    :integer          not null
#  poke_type  :string           not null
#  image_url  :string           not null
#  captured   :boolean          default(FALSE), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Pokemon < ApplicationRecord
    TYPES = [
        'fire',
        'electric',
        'normal',
        'ghost',
        'psychic',
        'water',
        'bug',
        'dragon',
        'grass',
        'fighting',
        'ice',
        'flying',
        'poison',
        'ground',
        'rock',
        'steel'
      ].sort.freeze

    validates :image_url, presence: true
    validates :name, uniqueness: {message: " '%{value}'  already taken"}, length: {minimum: 3, maximum: 255}
    validates :number, uniqueness: {message: " '%{value}' already taken"}, numericality: {greater_than: 0}
    validates :attack, :defense, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 100}
    validates :captured, inclusion: [true, false]
    validates :poke_type, inclusion: { in: TYPES, message: "'%{value}' is not a valid Pokemon type" }


    has_many :moves,
      class_name: :PokeMove,
      foreign_key: :pokemon_id,
      dependent: :destroy

    has_many :items,
      dependent: :destroy


end
