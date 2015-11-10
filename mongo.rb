require 'rubygems'  
require 'mongo'

db = Mongo::Connection.new("localhost").db("mydb")

puts "Connected"