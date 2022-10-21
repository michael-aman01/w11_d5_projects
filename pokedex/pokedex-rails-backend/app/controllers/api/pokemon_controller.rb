class Api::PokemonController < ApplicationController
  def types 
    pokemon_types = [
    "fire",
    "electric",
    "normal",
    "ghost",
    "psychic",
    "water",
    "bug",
    "dragon",
    "grass",
    "fighting",
    "ice",
    "flying",
    "poison",
    "ground",
    "rock",
    "steel"
    ]

    render json: pokemon_types

  end
end
