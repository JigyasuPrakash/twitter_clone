class CommentsController < ApplicationController
  before_action :set_tweet

  def create
    @comment = @tweet.comments.new(comment_params)
    @comment.user = current_user

    if @comment.save
      redirect_to root_path, notice: 'Comment added successfully!'
    else
      redirect_to root_path, alert: 'Error adding comment.'
    end
  end

  private

  def set_tweet
    @tweet = Tweet.find(params[:tweet_id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
