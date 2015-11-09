require 'pg'
require 'csv'

begin

    con = PG.connect :host => 'ec2-184-73-165-195.compute-1.amazonaws.com', :dbname => 'd62e809t1n9frg', :user => 'kyokfgvbcubmle', 
        :password => 'li_5MHueue-Z_m85bRmt_EOj3E'
    v = con.exec('SELECT AGE from health')
    v.each do |row|
        puts "%s" % [ row['AGE'] ]
    end
    puts "DONE"
rescue PG::Error => e

    puts e.message 
    
ensure

    con.close if con
    
end