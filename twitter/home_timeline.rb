require 'twitter'
require 'dotenv'
#require 'pp'

Dotenv.load

client = Twitter::REST::Client.new do |config|
	config.consumer_key = ENV["CONSUMER_KEY"]
	config.consumer_secret = ENV["CONSUMER_SECRET"]
	config.access_token = ENV["ACCESS_TOKEN"]
	config.access_token_secret = ENV["ACCESS_TOKEN_SECRET"]
end

puts "#{client.current_user.name}のTL"#名前持ってきて+のTL
client.home_timeline.each do |tweet|#tweet持ってきてループで表示
	puts tweet.text
end

=begin
複数行のコメントアウト
=end

#client.update("rudyのテスト")
#ツイート

#client.search("#メモ -rt", :count => 10, :result_type => "recent").collect do |tweet|
#	pp "#{tweet.user.screen_name}: #{tweet.text}"
#end
#ハッシュタグの検索して,10件引っ張ってくる