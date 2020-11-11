class SessionsController < ApplicationController
    def new
    end

    def create
        @visitor = Visitor.find_by(username: params[:username])
        if @visitor && @visitor.password == (params[:password])
            session[:visitor_id] = @visitor.id 
            redirect to dark_sky_parks_path
        end
    end
end
