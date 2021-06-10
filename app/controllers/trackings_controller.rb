class TrackingsController < ApplicationController

    def index
       tracking = Tracking.all 
       render json:"hello welcome to tracking"
    end

    def update
        animal = Animal.find(params[:id])   
        animal.update(animal_params)
        if animal.valid?
           render json: animal
        else
           render json: animal.errors  
        end   
    end


    private
    def tracking_params
        params.require(:tracking).permit(:date, :longitude, :latitude, :animal_id)
      end

end
