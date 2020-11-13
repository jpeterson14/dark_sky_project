class SessionsController < ApplicationController
    def new
    end

    def create
        @visitor = Visitor.find_by(username: params[:username])
        if @visitor && @visitor.authenticate(params[:password])
            log_in @visitor
            # session[:visitor_id] = @visitor.id 
            redirect_to dark_sky_parks_path(@visitor)
        else
            flash[:error] = "Incorrect Username/Password"
            redirect_to new_session_path
        
        end
    end
    def destroy
        log_out
        redirect_to new_session_path
      end
end
