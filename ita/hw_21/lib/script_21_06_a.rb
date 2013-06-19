# ========================================================================
# Script 		=	__21_06_a__
# ========================================================================
# Description 	=	"Input (Text files)"
# Name 			=	"Masha Zanin"
# Email 		=	"mariazanin@comcast.net"
# ========================================================================

require 'optparse'
OptionParser.new do |opts|
    opts.on("-i","--input") do
        $a=ARGV[0]
    end
end.parse!

lines=[]
file=File.open($a,"r")
file.each_line do|line|
    lines.push line
end

a=lines[0].to_i
b=lines[1].to_i
c=lines[2].to_i
d=lines[3].to_i
e=lines[4].to_i
f=lines[5].to_i

summary=(a+b+c+d+e+f)/6


puts "The summury of the following numbers #{a}, #{b}, #{c}, #{d}, #{e}, #{f} is: #{summary}"
        
