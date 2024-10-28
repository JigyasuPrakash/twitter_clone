User.create!([
  {email: "ram@abc.com", password: 123456, username: "Ram11"},
  {email: "veer@abc.com", password: 123456, username: "Veer Singh"},
  {email: "vidhu@abc.com", password: 123456, username: "Vidhi"}
])

Tweet.create!([
  {content: "Hi this is my first tweet!", user_id: 1},
  {content: "I am also has here to tweet :)", user_id: 3},
  {content: "Some news channels are very biased.", user_id: 2},
  {content: "Lets have some more tweets for testing!\r\n", user_id: 3},
  {content: "Water crisis is real problem, we need to start thinking on it.", user_id: 3},
  {content: "We should focus on Global warming issues as well.", user_id: 3}
])

Retweet.create!([
  {user_id: 2, tweet_id: 1},
  {user_id: 2, tweet_id: 1},
  {user_id: 2, tweet_id: 1},
  {user_id: 2, tweet_id: 2},
  {user_id: 2, tweet_id: 2},
  {user_id: 2, tweet_id: 1},
  {user_id: 2, tweet_id: 1},
  {user_id: 1, tweet_id: 1},
  {user_id: 2, tweet_id: 3}
])

Comment.create!([
  {content: "Hi Ram, I am also here", user_id: 2, tweet_id: 1},
  {content: "Hey Veer.. nice to see you here.", user_id: 1, tweet_id: 1}
])
