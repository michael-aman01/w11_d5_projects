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

  def index
    @pokemons = Pokemon.all
    render json: @pokemons
  end

  def show
    @pokemon = Pokemon.find_by(id: params[:id])
    if @pokemon
      render json: @pokemon
    else
      render json: "ERROR POKEMON NOT FOUND"
    end
  end

end
