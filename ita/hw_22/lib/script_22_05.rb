# ========================================================================
# Script 		=	__22_05__
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

a=csv_file[$row_num][0].to_f
b=csv_file[$row_num][1].to_f
c=csv_file[$row_num][2].to_f
d=csv_file[$row_num][3].to_f
e=csv_file[$row_num][4].to_f

average_score=(a+b+c+d+e)/5

puts "Average score of #{a}, #{b}, #{c}, #{d}, #{e} is #{average_score}"
        