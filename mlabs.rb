require 'mongo'

begin
	Mongo::Client.new([ 'mongo ds031912.mongolab.com:31912' ], :database => 'heroku_mhz4f7bj')
	Mongo::Client.new([ 'mongo ds031912.mongolab.com:31912' ], :database => 'heroku_mhz4f7bj', :connect => :direct)
	Mongo::Client.new('mongodb://heroku_mhz4f7bj/heroku_mhz4f7bj')
	#db = Mongo::Connection.new("mongo ds031912.mongolab.com:31912").db("heroku_mhz4f7bj")

	puts "Connected"

end