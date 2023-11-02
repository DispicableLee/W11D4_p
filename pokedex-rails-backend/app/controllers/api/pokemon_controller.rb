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

    def create
        @new_pokemon = Pokemon.new(pokemon_params)
        @new_pokemon.moves = params[:moves]
        if @new_pokemon.save
            render json: @new_pokemon
        else
            render json: @new_pokemon.errors.full_messages
        end
    end




    private
    def pokemon_params
        params.require(:pokemon).permit(:number, :attack, :defense, :image_url, :name, :poke_type)
    end


end
