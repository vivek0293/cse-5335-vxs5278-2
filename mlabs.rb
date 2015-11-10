require 'rubygems'
require 'mongo'

begin
	mongo_client = Mongo::Client.new("localhost", 27017)
	#db = Mongo::Connection.new("mongo ds031912.mongolab.com:31912").db("heroku_mhz4f7bj")

	puts "Connected"

end