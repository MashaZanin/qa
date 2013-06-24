# ========================================================================
# Script 		=	__24_06_b__
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
f=element[script_name]["num_6"]
g=element[script_name]["num_7"]
h=element[script_name]["num_8"]
i=element[script_name]["num_9"]
j=element[script_name]["num_10"]

summary=(a.to_f+b.to_f+c.to_f+d.to_f+e.to_f+f.to_f+g.to_f+h.to_f+i.to_f+j.to_f)/10


puts "The summury of the following numbers: #{a}, #{b}, #{c}, #{d}, #{e}, #{f}, #{g}, #{h}, #{i} and #{j} is #{summary.to_f}"
