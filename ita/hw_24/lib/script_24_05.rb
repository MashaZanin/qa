# ========================================================================
# Script 		=	__24_05__
# ========================================================================
# Description 	=	"Input (Single JSON files)"
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
if RUBY_PLATFORM=~/darwin/ then
    script_name=__FILE__.split("/").to_a.last
    else
    script_name=__FILE__
end

a=element[script_name]["num_1"]
b=element[script_name]["num_2"]
c=element[script_name]["num_3"]
d=element[script_name]["num_4"]
e=element[script_name]["num_5"]

average_score=(a.to_f+b.to_f+c.to_f+d.to_f+e.to_f)/5

puts "Average score of #{a}, #{b}, #{c}, #{d}, #{e} is #{average_score}"
        