class TweetsApp

  def call
    puts 'Welcome to Twitter'

    puts 'Enter a username:'
    username = gets.strip

    puts 'Enter a message:'
    message = gets.strip

    tweet = Tweet.new({'username' => username, 'message' => message})
    
    # Save tweet in DB
    tweet.save

    tweets = Tweet.all
    render(tweets)
  end

  private

  def render(tweets)
    tweets.each.with_index(1) do |tweet, i|
      puts "#{i}. #{tweet.username} says: #{tweet.message}"
      # puts "#{i}. #{tweet['username']} says: #{tweet['message']}"
    end
  end
end
