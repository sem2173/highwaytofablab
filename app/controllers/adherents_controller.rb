class AdherentsController < ApplicationController
	def index
		@adherents = Adherent.all
	end

	def new
		@adherent = Adherent.new
	end

	def create 

		@adherent = Adherent.new(adherent_params)
		if@adherent.save
			redirect_to @adherent
		 flash[:success] = "Profil créé avec succès"
		else
			render 'new'
 		end
	end
	
 	def show
  		@adherent = Adherent.find(params[:id])
	end

	def edit
		@adherent = Adherent.find(params[:id])
	end

	def update
		@adherent = Adherent.find(params[:id])
		if @adherent.update(adherent_params)
			redirect_to @adherent
			flash[:success] = "Profil mis à jour avec succès"
		else
			render "edit"
		end
	end

	def destroy
		Adherent.find(params[:id]).delete
		redirect_to adherents_path,
		:confirm => "êtes vous sure?"
		flash[:success] = "Profil supprimé"
	end

private

	def adherent_params
		params.require(:adherent).permit(:firstname, :lastname, :user_email, :phone)
	end
end
