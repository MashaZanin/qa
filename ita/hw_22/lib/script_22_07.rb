# ========================================================================
# Script 		=	__21_07__
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

re=/[A-Z][a-z]+\s[A-Z][a-z]+/
name=csv_file[$row_num][0].match re
puts "His name is: #{name}"
        