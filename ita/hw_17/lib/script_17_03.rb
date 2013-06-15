# ========================================================================
# Script 		=	__17_02__
# ========================================================================
# Description 	=	"Command-line Option"
# Name 			=	"Masha Zanin"
# Email 		=	"mariazanin@comcast.net"
# ========================================================================


require 'optparse'
OptionParser.new do |opts|
    opts.on("-f","--first_number") do
        $a=ARGV[0]
end
    opts.on("-s","--second_number") do
        $b=ARGV[0]
end
    end.parse!

x=$a.to_i
y=$b.to_i
z=x/y

puts "When I am dividing #{x} by #{y} I am always have #{z}"


        
