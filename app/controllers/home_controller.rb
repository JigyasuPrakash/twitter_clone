class HomeController < ApplicationController

  skip_before_action :authenticate_user!, only: :index

  def index
    @tweets = Tweet.includes(:comments, :user).all.order(created_at: :desc).page(params[:page]).per(5)
  end

  def my_tweets
    if user_signed_in?
      @tweets = current_user.tweets.includes(:comments).order(created_at: :desc)
    else
      redirect_to root_path, alert: "Please log in to see your tweets."
    end
  end
end
