require 'rubygems'
require 'mongo'
require 'csv'
require 'JSON'
begin
	#client = Mongo::Client.new([ 'localhost:27017' ], :database => 'music')
	#mongo_client = Mongo::Client.new(['localhost'], 27017)
	#db = Mongo::Client.new(["mongo ds031912.mongolab.com:31912"]).db("heroku_mhz4f7bj")
	client = Mongo::Client.new([ 'ds031912.mongolab.com:31912' ], :database => 'heroku_mhz4f7bj', :user => 'heroku_mhz4f7bj')
	puts "Connected"

	#coll = db.collection("testCollection")
	#puts "Collection created"
	#mongoimport --db heroku_mhz4f7bj --collection sample --type csv --headerline --file 6339_Dataset_1.csv
	#mongoimport --db heroku_mhz4f7bj --type csv --headerline --file 6339_Dataset_1.csvmongoimport --host=127.0.0.1 -d database_name -c collection_name --type csv --file csv_location --headerline
	#mongoimport --host=ds031912.mongolab.com:31912 -d heroku_mhz4f7bj --type csv --file 6339_Dataset_1.csv --headerline

	CSV.parse(6339_Dataset_1.csv).to_json
	puts "file imported"
end