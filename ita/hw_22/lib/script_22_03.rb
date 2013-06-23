# ========================================================================
# Script 		=	__22_03__
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


x=csv_file[$row_num][0].to_i
y=csv_file[$row_num][1].to_i

puts "When I am dividing #{x} by #{y} I am always have #{x/y}"
