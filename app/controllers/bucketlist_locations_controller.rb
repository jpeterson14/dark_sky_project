class BucketlistLocationsController < ApplicationController
    def index
        @visitor = current_visitor
        @bucketlist_locations = @visitor.bucketlist_locations
    end
    def new
        @bucketlist_location = BucketlistLocation.new
    end
    
    def create
        @bucketlist_location = BucketlistLocation.new(bl_params)
        if @bucketlist_location.valid?
            @bucketlist_location.save
        # redirect_to "/bucketlist_locations/#{@bucketlist_location.id}"
        redirect_to bucketlist_locations_path
        else
            flash[:error] = "THIS PARK HAS ALREADY BEEN ADDED TO YOUR LIST"
            # flash[:errors] = @bucketlist_location.errors.messages
            redirect_to new_bucketlist_location_path
        end
        
    end
    
    def edit
        @bucketlist_location = BucketlistLocation.find_by(id: params[:id])
    end
    
    def update
        @bucketlist_location = BucketlistLocation.find_by(id: params[:id])
    end
    def show
       @bucketlist_location = BucketlistLocation.find_by(id: params[:bucketlist_location_id])
       @visitor = current_visitor
        @bucketlist_locations = @visitor.bucketlist_locations
    end
    

    def destroy
        @visitor = current_visitor
        @bucketlist_locations = @visitor.bucketlist_locations
        @location = @bucketlist_locations.find_by(dark_sky_park_id: params[:dark_sky_park_id])
        @location.destroy
        redirect_to bucketlist_locations_path
        


    end
    private
    def bl_params
        params.require(:bucketlist_location).permit(:visitor_id, :dark_sky_park_id)
    end

end
