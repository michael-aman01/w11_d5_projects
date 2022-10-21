# == Schema Information
#
# Table name: items
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  price      :integer          not null
#  happiness  :integer          not null
#  image_url  :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  pokemon_id :bigint           not null
#
class Item < ApplicationRecord
    validates :name, length: {maximum: 255}, presence: true
    validates :price, numericality: {greater_than_or_equal_to: 0}

    belongs_to :pokemon

end
