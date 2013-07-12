# ========================================================================
# Script 		=	__28_06_b__
# ========================================================================
# Description 	=	"Input (DB - 10 tables)"
# Name 			=	"Masha Zanin"
# Email 		=	"mariazanin@comcast.net"
# ========================================================================

require 'optparse'
require 'mysql'

items=[]

OptionParser.new do |opts|
    opts.on("-i", "--input"){$sql_file=ARGV[0]}
    opts.on("-d", "--db"){$db_name=ARGV[0]}
    opts.on("-t", "--table"){$table_name=ARGV[0]}
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
    
    rs=con.query("SELECT * FROM #{$table_name}")
    
    rs.each_hash do |row|
        items<<row["item"].chomp
    end
    
    
    a=items[0]
    b=items[1]
    c=items[2]
    d=items[3]
    e=items[4]
    f=items[5]
    g=items[6]
    h=items[7]
    i=items[8]
    j=items[9]
    
    
    summary=(a.to_f+b.to_f+c.to_f+d.to_f+e.to_f+f.to_f+g.to_f+h.to_f+i.to_f+j.to_f)/10
    
    
    puts "The summury of the following numbers: #{a}, #{b}, #{c}, #{d}, #{e}, #{f}, #{g}, #{h}, #{i} and #{j} is #{summary.to_f}"
    
    
    rescue Mysql::Error => e
    puts e.errno
    puts e.error
    
    ensure
    con.close if con
end
