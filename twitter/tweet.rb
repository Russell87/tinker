# ls 

require 'twitter'

client = Twitter::REST::Client.new do |config|
    config.consumer_key         = ENV['CONSUMER_KEY']
    config.consumer_secret      = ENV['CONSUMER_SECRET']
    config.access_token         = ENV['ACCESS_TOKEN']
    config.access_token_secret  = ENV['ACCESS_TOKEN_SECRET']
end

# tweets = client.user_timeline(3374190543, count: 10)

# tweets.each { |tweet| puts tweet.full_text, tweet.id }
count_followers = client.friends(3374190543).count
# client.update("U+1F600", in_reply_to_status_id: 836590675298824194)
puts count_followers


tweet = client.search("Ruby on Rails -rt").take(10)
tweet.each {|t| puts t.full_text}

# Check if Geo = true
# geo = client.search("Ruby on Rails -rt").take(10)
# geo.each {|t| puts t.geo? }

