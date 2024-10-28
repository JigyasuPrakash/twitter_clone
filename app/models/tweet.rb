class Tweet < ApplicationRecord
  validates :content, presence: true, length: { maximum: 300 }
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :retweets, dependent: :destroy

  def retweet_count
    retweets.count
  end

  def get_recent_retweets
    retweets.order(created_at: :desc).limit(5)
  end
end
