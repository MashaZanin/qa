# ========================================================================
# Script 		=	__23_05__
# ========================================================================
# Description 	=	"Input (JSON files)"
# Name 			=	"Masha Zanin"
# Email 		=	"mariazanin@comcast.net"
# ========================================================================

require 'optparse'
require 'json'
OptionParser.new do |opts|
    opts.on("-i","--input") do
        $file_name=ARGV[0]
    end
end.parse!

json_file=File.read($file_name)
element=JSON.parse(json_file)

a=element["num_1"]
b=element["num_2"]
c=element["num_3"]
d=element["num_4"]
e=element["num_5"]

average_score=(a.to_f+b.to_f+c.to_f+d.to_f+e.to_f)/5

puts "Average score of #{a}, #{b}, #{c}, #{d}, #{e} is #{average_score}"
        