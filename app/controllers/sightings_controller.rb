class SightingsController < ApplicationController
    belongs_to :animal

    def index
        sightings = Sighting.where(date: params[:start_date]..params[:end_date])
        render json: sightings
    end

    def create
        animal = Animal.find(params[:animal_id])
        sighting = Sighting.create(sighting_params)
        if sighting.valid?
            render json: sighting
        else 
            render json: sighting.errors   
        end
    end


    
    
    
    
    
    private

    def sighting_params
        params.require(:sighting).permit(:animal_id, :date, :lat, :long)
    end

end