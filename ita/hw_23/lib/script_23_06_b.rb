# ========================================================================
# Script 		=	__23_06_b__
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
g=element["num_7"]
h=element["num_8"]
i=element["num_9"]
j=element["num_10"]

summary=(a.to_f+b.to_f+c.to_f+d.to_f+e.to_f+f.to_f+g.to_f+h.to_f+i.to_f+j.to_f)/10


puts "The summury of the following numbers: #{a}, #{b}, #{c}, #{d}, #{e}, #{f}, #{g}, #{h}, #{i} and #{j} is #{summary.to_f}"
