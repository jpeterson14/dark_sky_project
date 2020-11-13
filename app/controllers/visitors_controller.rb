class VisitorsController < ApplicationController

    
    # def show
    #     @visitor = Visitor.find_by(id: params[:id])
    # end
    def new
        @visitor = Visitor.new
    end
    
    def create
        
        @visitor = Visitor.new(
            username: params[:visitor][:username],
            password: params[:visitor][:password]
            )
            
            if Visitor.exists?(username: params[:visitor][:username])
                flash[:error] = "Username already exists, choose another or login instead."
                redirect_to new_visitor_path
            elsif @visitor.valid?
                @visitor.save
                log_in @visitor
                redirect_to dark_sky_parks_path
            else 
                flash[:errors] = @visitor.errors.full_messages
                redirect_to new_visitor_path
            end
    end
        
    def edit
        @visitor = Visitor.find_by(id: params[:id])
    end
    
    def update
            @visitor = Visitor.find_by(id: params[:id])
            @visitor.update(
                username: params[:visitor][:username],
                password: params[:visitor][:password]
                )
                redirect_to dark_sky_parks_path
                
    end
end
    