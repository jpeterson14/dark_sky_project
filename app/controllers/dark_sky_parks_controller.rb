class DarkSkyParksController < ApplicationController
    def index
        @dark_sky_parks = DarkSkyPark.all
    end

    def show
        @dark_sky_park = DarkSkyPark.find_by(id: params[:id])
        @comments = @dark_sky_park.comments.all
    end
end
