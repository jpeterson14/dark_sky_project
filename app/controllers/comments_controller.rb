class CommentsController < ApplicationController
    # def new
    #     @comment = Comment.new
    # end

    def create
        @comment = Comment.create({
            post: params[:post],
            dark_sky_park_id: params[:dark_sky_park_id],
            visitor_id: session[:visitor_id]
        })
        redirect_to("/dark_sky_parks/#{params[:dark_sky_park_id]}")
        
    end

    # def edit
    #     @comment = Comment.find_by(id: params[:id])
    # end

    # def update
    #     @comment = Comment.find_by(id: params[:id])
    #     @comment.update(comment_params)
    # end

    # def show
    #     @comment = Comment.find_by(id: params[:id])
    # end

    # def destroy
    # end
    
    private
    def comment_params
        params.require(:comment).permit(:post, :visitor_id, :dark_sky_park_id)
    end

end