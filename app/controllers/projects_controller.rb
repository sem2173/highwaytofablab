class ProjectsController < ApplicationController
  
 	def index
		@projects = Project.all
	end
		
	def new
  		@project = Project.new
	end

	def create 
		@project = Project.new(project_params)
    	if @project.save
      	flash[:success] = "projet créé avec succès"
			redirect_to @project
    	else
      		flash[:error] = "Erreur sur la création du projet"
      		redirect_to action: :new
 	end
	end
	
 	def show
  		@project = Project.find(params[:id])
	end

	def edit
		@project = Project.find(params[:id])
	end

	def update
		@project = Project.find(params[:id])		
    	if @project.update(project_params)
			redirect_to @project
			flash[:success] = "project mis à jour avec succès"
		else
			render "edit"
		end
	end

	def destroy
		project.find(params[:id]).delete
		redirect_to projects_path, :confirm => "êtes vous sure?"
		flash[:success] = "Profil supprimé"
	end

	private

	def project_params
		params.require(:project).permit(:name, :description, :plan, :duration, :furnitures, :author, :history)
	end
end
