class Api::PokemonController < ApplicationController
    def types
        @types = Pokemon::TYPES
        render json: @types
    end

    def index
        @pokemons = Pokemon.all
        # render json: @pokemons
    end

    def show
        @pokemon = Pokemon.find(params[:id])
        # render json: @pokemon
    end

end
