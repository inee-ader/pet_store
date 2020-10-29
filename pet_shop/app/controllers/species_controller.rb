class SpeciesController < ApplicationController

    def index 
        @pets = Pet.where("species LIKE ?", params[:species])
        render 'pets/index'
    end

end