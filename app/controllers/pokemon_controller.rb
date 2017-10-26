class PokemonController < ApplicationController

	def capture
		id = params[:id]
		pokemon = Pokemon.find(id)
		pokemon.trainer_id = current_trainer.id #need colon?
		pokemon.save
		redirect_to root_path #whatabout Prefix_Patch?
	end

	def damage
		id = params[:id]
		pokemon = Pokemon.find(id)
		pokemon.health = pokemon.health - 10 #need colon?
		pokemon.save
		if pokemon.health <= 0
			Pokemon.delete(pokemon)
		end 
		
		redirect_to trainers_path + "/" + pokemon.trainer_id.to_s #whatabout Prefix_Patch?
	end

	def new
	end


	def create

		pokemon = Pokemon.new 
		pokemon.trainer_id = current_trainer.id
		pokemon.health = 100
		pokemon.level = 1
		render 'new'
		pokemon.name = params[:name]
		pokemon.save
		#redirect_to trainers_path + "/" + pokemon.trainer_id.to_s 
	end

	

end