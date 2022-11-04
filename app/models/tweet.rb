class Tweet < ApplicationRecord
  belongs_to :user
  belongs_to :twitter_account

  # validate body length to be minimum 1 and maximum 280 characters
  validates :body, length: { minimum: 1, maximum: 280 }
  validates :publish_at, presence: true

  after_initialize do
    self.publish_at ||= 1.hour.from_now
  end

  def published?
    tweet_id?
  end

  def publish_to_twitter!
    tweet = twitter_account.client.update(body)
    update(tweet_id: tweet.id)
  end
end
