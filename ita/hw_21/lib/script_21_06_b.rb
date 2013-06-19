# ========================================================================
# Script 		=	__21_06_b__
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
g=lines[6].to_i
h=lines[7].to_i
i=lines[8].to_i
j=lines[9].to_i

summary=(a.to_f+b.to_f+c.to_f+d.to_f+e.to_f+f.to_f+g.to_f+h.to_f+i.to_f+j.to_f)/10


puts "The summury of the following numbers: #{a}, #{b}, #{c}, #{d}, #{e}, #{f}, #{g}, #{h}, #{i} and #{j} is #{summary.to_f}"
        
