# ========================================================================
# Script 		=	__29_05__
# ========================================================================
# Description 	=	"Input (DB - 1 tables)"
# Name 			=	"Masha Zanin"
# Email 		=	"mariazanin@comcast.net"
# ========================================================================

require 'optparse'
require 'mysql'

items=[]
$table_name="t_29"

OptionParser.new do |opts|
    opts.on("-i", "--input"){$sql_file=ARGV[0]}
    opts.on("-d", "--db"){$db_name=ARGV[0]}
    opts.on("-c", "--test_case"){$test_case=ARGV[0]}
end.parse!

begin
    
    con=Mysql.new 'localhost', 'auto', 'password'
    con.query("CREATE DATABASE IF NOT EXISTS #{$db_name}")
    con.query("USE #{$db_name}")
    con.query("DROP TABLE IF EXISTS #{$table_name}")
    
    File.readlines($sql_file).each do |sql|
        sql.gsub("tbl", "#{$table_name}")
        con.query("#{sql}")
    end
    
    rs=con.query("SELECT * FROM #{$table_name} WHERE TC='#{$test_case}'")
    rs.each_hash do |line|
        items<<line["item"].chomp
    end
    
    
    a=items[0]
    b=items[1]
    c=items[2]
    d=items[3]
    e=items[4]
    
    average_score=(a.to_f+b.to_f+c.to_f+d.to_f+e.to_f)/5
    
    puts "Average score of #{a}, #{b}, #{c}, #{d}, #{e} is #{average_score}"
    
    rescue Mysql::Error => e
    puts e.errno
    puts e.error
    
    ensure
    con.close if con
end
        