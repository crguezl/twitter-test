require 'twitter'
require './configure'

screen_name = String.new ARGV[0]
a_user = Twitter.user(screen_name)

if a_user.protected != true
  puts "Username   : " + a_user.screen_name.to_s
  puts "Name       : " + a_user.name
  puts "Location   : " + a_user.location
  if (a_user.url != nil)
    puts "URL        : " + a_user.url.to_s
  end
  puts "Verified   : " + a_user.verified.to_s
  puts

  tweet = Twitter.user_timeline(screen_name).first

  if tweet
    puts "Tweet text : " + tweet.text 
    puts "Tweet time : " + tweet.created_at.to_s
    puts "Tweet ID   : " + tweet.id.to_s
  end
end
