require 'rubygems'  
require 'mongo'

begin
	db = Mongo::Connection.new("mongo ds031912.mongolab.com:31912").db("heroku_mhz4f7bj")

	puts "Connected"

end