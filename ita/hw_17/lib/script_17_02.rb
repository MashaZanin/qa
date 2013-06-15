# ========================================================================
# Script 		=	__17_02__
# ========================================================================
# Description 	=	"Command-line Option"
# Name 			=	"Masha Zanin"
# Email 		=	"mariazanin@comcast.net"
# ========================================================================


require 'optparse'
OptionParser.new do |opts|
    opts.on("-f","--first_fruit") do
        $a=ARGV[0]
end
    opts.on("-s","--second_fruit") do
        $b=ARGV[0]
end
    end.parse!
puts "My favorite fruit is: #{$a.chop.to_s} and #{$b.chop.to_s}"

        
