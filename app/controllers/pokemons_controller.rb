class PokemonsController < ApplicationController

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
		
		redirect_to trainers_path(params[:trainer_id]) #+ "/" + pokemon.trainer_id.to_s #whatabout Prefix_Patch? #id pokemon damaging, #id of trainer/owners
	end

	def new
		@trainer = current_trainer
	end


	def create
		pokemon = Pokemon.new 
		pokemon.trainer_id = current_trainer.id #params[:trainer_id]
		pokemon.health = 100
		pokemon.level = 1
		#render 'new'
		pokemon.name = params[:pokemon][:name]
		if pokemon.valid?
			pokemon.save
			redirect_to trainer_path(current_trainer)
		else 
			if pokemon.name.nil? or pokemon.name == ""
				redirect_to new_path
				flash[:error] = "Your Pokemon needs a name."
				#flash[:error][:] = pokemon.errors.full_messages.to_sentence
			else
				redirect_to new_path
				#flash[:error] = pokemon.errors.full_messages.to_sentence
				flash[:error] = "You can't have Pokemon twins."

			end
		end
	end

	

end