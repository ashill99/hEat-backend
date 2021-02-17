class Api::V1::CommentsController < ApplicationController

    def show 
        @comment = Comment.find(params[:id])
        render json: @comment 
    end

    def index
        @comments = Comment.all
        render json: @comments
    end

    # def new
    #     @comment = Comment.new
    # end

    # def edit
    #     @comment = Comment.find(params[:id])
    # end

    def update
        @comment = Comment.find(params[:id])
        @comment.update(comment_params)
        render json: @comment
    end

    def create 
        @comment = Comment.create(comment_params)
        render json: @comment
    end 

    # def destroy 
    #     comment = Comment.find(params[:id])
    #     comment.destroy  
    # end

    private

    def comment_params
        params.require(:comment).permit(:id, :content, :username, :likes, :rating, :user_id, :location_id)
    end

end
