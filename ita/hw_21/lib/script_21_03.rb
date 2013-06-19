# ========================================================================
# Script 		=	__21_03__
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

x=lines[0].to_i
y=lines[1].to_i

puts "When I am dividing #{x} by #{y} I am always have #{x/y}"
