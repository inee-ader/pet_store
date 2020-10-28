class PetsController < ApplicationController
    
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
        find_pet
    end
     
    def update
        find_pet
        @pet.update(pet_params)
        redirect_to pet_path
    end

    def destroy
        find_pet
        @pet.destroy
        redirect_to pets_path
    end

    private
    def find_pet
        @pet = Pet.find(params[:id])
    end

    def pet_params
        params.require(:pet).permit(:name, :species)
    end

end
