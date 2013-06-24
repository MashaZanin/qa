# ========================================================================
# Script 		=	__23_06_a__
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
f=element["num_6"]

summary=(a.to_i+b.to_i+c.to_i+d.to_i+e.to_i+f.to_i)/6


puts "The summury of the following numbers #{a}, #{b}, #{c}, #{d}, #{e}, #{f} is: #{summary}"
        