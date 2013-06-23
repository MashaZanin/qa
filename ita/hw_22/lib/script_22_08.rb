# ========================================================================
# Script 		=	__22_08__
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

season=[]
season[0]=csv_file[$row_num][0]
season[1]=csv_file[$row_num][1]
season[2]=csv_file[$row_num][2]
season[3]=csv_file[$row_num][3]

puts "Here are sorted (alphabetically) words: #{season.sort.join(" ")}"

        
