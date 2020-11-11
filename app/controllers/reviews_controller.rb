class ReviewsController < ApplicationController
    def new
        @review = Review.new
    end

    def create
        @review = Review.create(review_params)
        
    end

    def edit
        @review = Review.find_by(id: params[:id])
    end

    def update
        @review = Review.find_by(id: params[:id])
        @review.update(review_params)
    end

    def show
        @review = Review.find_by(id: params[:id])
    end

    def destroy
    end
    
    private
    def review_params
        params.require(:review).permit(:visitor_id, :dark_sky_park_id, :comment)
    end
end
