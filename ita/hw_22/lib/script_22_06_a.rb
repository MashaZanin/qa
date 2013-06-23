# ========================================================================
# Script 		=	__22_06_a__
# ========================================================================
# Description 	=	"Input (CSV files)"
# Name 			=	"Masha Zanin"
# Email 		=	"mariazanin@comcast.net"
# ========================================================================

require 'optparse'
require 'csv'
OptionParser.new do |opts|
    opts.on("-i","--input") do
        $file_name=ARGV[0]
    end
    opts.on("-r","--row") do
        $row_num=ARGV[0].to_i-1
    end
end.parse!

csv_file=CSV.read($file_name)

a=csv_file[$row_num][0].to_i
b=csv_file[$row_num][1].to_i
c=csv_file[$row_num][2].to_i
d=csv_file[$row_num][3].to_i
e=csv_file[$row_num][4].to_i
f=csv_file[$row_num][5].to_i

summary=(a+b+c+d+e+f)/6


puts "The summury of the following numbers #{a}, #{b}, #{c}, #{d}, #{e}, #{f} is: #{summary}"
        
