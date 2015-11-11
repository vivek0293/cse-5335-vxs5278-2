require 'rubygems'
require 'mongo'

begin
	#client = Mongo::Client.new([ 'localhost:27017' ], :database => 'music')
	#mongo_client = Mongo::Client.new(['localhost'], 27017)
	db = Mongo::Client.new(["mongo ds031912.mongolab.com:31912"]).db("heroku_mhz4f7bj")

	puts "Connected"

end