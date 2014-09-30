def my_twitter_client
  client = Twitter::REST::Client.new do |config|
    config.consumer_key        = 'TTm62K3YiHDGbpZltIoNBFcJG'
    config.consumer_secret     = 'oh4ci74AeRaptyAfuJ5jv7z292C5nBzGhukpwZ3VBcExm4dOya'
    config.access_token        = '858396530-G30CK7WPhUh15Q4iUdp3dzIThsQIIgBTMnxwKArC'
    config.access_token_secret = 'ThJKnZ0lR7nUGfro6yRLOhApBt4ALF9GjC3mWEjkFxjfD'
  end
end
