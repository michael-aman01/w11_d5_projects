# == Schema Information
#
# Table name: moves
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Move < ApplicationRecord
    validates :name, length: {maximum: 255}, presence: true, uniqueness: { message: "Move name is not unique"}

    has_many :pokemon,
        class_name: :PokeMove,
        foreign_key: :move_id

end
