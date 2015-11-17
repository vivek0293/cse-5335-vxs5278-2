require 'pg'
require 'csv'

begin

    con = PG.connect :host => 'ec2-184-73-165-195.compute-1.amazonaws.com', :dbname => 'd62e809t1n9frg', :user => 'kyokfgvbcubmle', 
        :password => 'li_5MHueue-Z_m85bRmt_EOj3E'
    puts "Enter the ID:"
	id = gets
    v = con.exec("SELECT AGE,SEX,RACE, LENGTH_OF_STAY, STAY_INDICATOR, TOTAL_CHARGES, ID from health where ID = '%d'" % [id])
    #v.exec(id)
    puts "QUERY 1"
    v.each do |row|
        puts "%s %s %s %s %s %s %s" % [ row['age'], row['sex'], row['race'], row['length_of_stay'], row['stay_indicator'], row['total_charges'], row['id'] ]
    end

    w = con.exec("SELECT AGE,SEX,RACE, LENGTH_OF_STAY, STAY_INDICATOR, TOTAL_CHARGES from health where AGE = '3'")
    puts "QUERY 2"
    w.each do |row|
        puts "%s %s %s %s %s %s" % [ row['age'], row['sex'], row['race'], row['length_of_stay'], row['stay_indicator'], row['total_charges'] ]
    end
    puts "DONE"
rescue PG::Error => e

    puts e.message 
    
ensure

    con.close if con
    
end