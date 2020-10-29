class PetsController < ApplicationController
    
    before_action :find_pet, only: [:edit, :update, :destroy, :show]
    
    def welcome
    end

    def index 
        @pets = Pet.all
    end

    def create
        @pet = Pet.create(pet_params)
        redirect_to pets_path
    end

    def edit
    end
     
    def update
        @pet.update(pet_params)
        redirect_to pet_path
    end

    def destroy
        @pet.destroy
        redirect_to pets_path
    end

    def show        
    end

    private

    def find_pet
        @pet = Pet.find(params[:id])
    end

    def pet_params
        params.require(:pet).permit(:name, :species)
    end

end
