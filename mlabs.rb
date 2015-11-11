require 'rubygems'
require 'mongo'

begin
	#client = Mongo::Client.new([ 'localhost:27017' ], :database => 'music')
	#mongo_client = Mongo::Client.new(['localhost'], 27017)
	#db = Mongo::Client.new(["mongo ds031912.mongolab.com:31912"]).db("heroku_mhz4f7bj")
	client = Mongo::Client.new([ 'ds031912.mongolab.com:31912' ], :database => 'heroku_mhz4f7bj', :user => 'heroku_mhz4f7bj')
	puts "Connected"

	#coll = db.collection("testCollection")
	#puts "Collection created"
	#mongoimport --db heroku_mhz4f7bj --collection sample --type csv --headerline --file 6339_Dataset_1.csv
	mongoimport --db heroku_mhz4f7bj --type csv --headerline --file 6339_Dataset_1.csv
	puts "file imported"
end