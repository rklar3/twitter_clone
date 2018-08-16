class CommentsController < ApplicationController


    def create
		@tweet = Tweet.find(params[:tweet_id])
		@comment = @tweet.comments.create(params[:comment].permit(:name, :comment, :user_id))
	
		redirect_to tweet_path(@tweet)	
	end

	def destroy
		@tweet = Tweet.find(params[:tweet_id])
		@comment = @tweet.comments.find(params[:id])
		@comment.destroy
		redirect_to tweet_path(@tweet)
	end
end
