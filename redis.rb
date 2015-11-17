require "redis"
require "csv"
require "json"

begin
	redis = Redis.new(:url => "redis://h:petr08jsjnofis211gmbq8fdd8@ec2-54-83-9-36.compute-1.amazonaws.com:11959")
	puts "Connected"

	health = CSV.read('6339_Dataset_1.csv')
	
	health.each do |data_row|
		
		redis.hmset(data_row[21],"AGE",data_row[0],"SEX",data_row[1],"RACE",data_row[2],"DAY_OF_ADMISSION",data_row[3],"DISCHARGE_STATUS",data_row[4],"STAY_INDICATOR",data_row[5],"ID",data_row[21])
			
	end
	puts "Enter the ID:"
	id = gets
	puts"QUERY 1"
	puts redis.hgetall(id.to_i)
	redis.del("foo")
	value = redis.keys('*')
	puts "QUERY 2"
	puts "Enter the AGE:"
	age = gets.chomp.to_s
	
	value.each do |data|
		
		val = redis.hgetall(data)
		
		val.each do |key, value|
	 		if key == "AGE" && value == age
      			puts redis.hgetall(data)
  			end
		end		
	end
end