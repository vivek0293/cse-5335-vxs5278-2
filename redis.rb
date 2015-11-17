require "redis"
require "csv"
require "json"

begin
	redis = Redis.new(:url => "redis://h:petr08jsjnofis211gmbq8fdd8@ec2-54-83-9-36.compute-1.amazonaws.com:11959")
	puts "Connected"

	health = CSV.read('6339_Dataset_1.csv')
	#a = redis.set "foo",[health].to_json
	#b = JSON.parse(redis.get "foo") 
	#c = redis.get "foo"
	#d = redis.hgetall "foo"
	#data = [health].to_json
	#puts health
	#key = 1
	health.each do |data_row|
		#puts data_row
		#redis.hmset "key","AGE","data_row","SEX","data_row","RACE","data_row","DAY_OF_ADMISSION","data_row","DISCHARGE_STATUS","data_row","STAY_INDICATOR","data_row"
		
		redis.hmset(data_row[21],"AGE",data_row[0],"SEX",data_row[1],"RACE",data_row[2],"DAY_OF_ADMISSION",data_row[3],"DISCHARGE_STATUS",data_row[4],"STAY_INDICATOR",data_row[5],"ID",data_row[21])
		#key = key+1
		#puts key	
	end
	puts "Enter the ID:"
	id = gets

	puts redis.hgetall(id.to_i)
	redis.del("foo")
	value = redis.keys('*')
	#puts value
	value.each do |data|
		puts id
		val = redis.hgetall(data)
		#puts val
		
		
	val.each do |key, value|
	 	if key == "AGE" and value == '3' 
      		puts redis.hgetall(data)
  		end
	end		
	end
end