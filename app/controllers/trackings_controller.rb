class TrackingsController < ApplicationController

    def index
       tracking = Tracking.all 
       render json: tracking
    end

    def create
        animal = Animal.find(params[:id]) 
        animal.Tracking.create(tracking_params)
        if tracking.valid?
            render json: tracking
         else
            render json: tracking.errors  
         end   
      end

    def update
        tracking = Tracking.find(params[:id]);
        tracking.update(tracking_params)
        if tracking.valid?
           render json: tracking
        else
           render json: tracking.errors  
        end   
    end

    def destroy
      tracking = Tracking.find(params[:id]).delete  
      render json: "sucessfully deleted"
  end


    private
    def tracking_params
        params.require(:tracking).permit(:date, :longitude, :latitude, :animal_id)
      end

end
