class TweetsController < ApplicationController
  def create
    @tweet = current_user.tweets.new(tweet_params)

    if @tweet.save
      redirect_to my_tweets_path, notice: 'Tweet created successfully!'
    else
      redirect_to my_tweets_path, alert: 'Error creating tweet.'
    end
  end

  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    redirect_to root_path, notice: 'Tweet deleted successfully!'
  end

  def retweet
    @tweet = Tweet.find(params[:id])
    @retweet = current_user.retweets.build(tweet: @tweet)

    if @retweet.save
      redirect_to root_path, notice: "Retweeted successfully!"
    else
      redirect_to root_path, alert: "Unable to retweet."
    end
  end

  private

  def tweet_params
    params.require(:tweet).permit(:content)
  end
end
