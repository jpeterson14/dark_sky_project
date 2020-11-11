class VisitorsController < ApplicationController

    def new
        @visitor = Visitor.new
    end

    def create
        @visitor = Visitor.create(visitor_params)
    end

    def edit
        @visitor = Visitor.find_by(id: params[:id])
    end

    def update
        @visitor = Visitor.find_by(id: params[:id])
        @visitor.update(visitor_params)
    end

    def show
        @visitor = Visitor.find_by(id: params[:id])
    end
    

    private
    def visitor_params
        params.require(:visitor).permit(:username, :password)
    end
end
