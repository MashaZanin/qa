# ========================================================================
# Script 		=	__22_04__
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
        $row_num=ARGV[0].to_i
    end
end.parse!

csv_file=CSV.read($file_name)

puts "My IP Address is: #{csv_file[$row_num][0]}.#{csv_file[$row_num][1]}.#{csv_file[$row_num][2]}.#{csv_file[$row_num][3]}"
