# ========================================================================
# Script 		=	__17_05__
# ========================================================================
# Description 	=	"Command-line Option"
# Name 			=	"Masha Zanin"
# Email 		=	"mariazanin@comcast.net"
# ========================================================================


require 'optparse'
OptionParser.new do |opts|
    opts.on("-a","--first_number") do
        $a=ARGV[0]
end
    opts.on("-b","--second_number") do
        $b=ARGV[0]
end
    opts.on("-c","--third_number") do
        $c=ARGV[0]
end
    opts.on("-d","--forth_number") do
        $d=ARGV[0]
end
    opts.on("-e","--fifth_number") do
        $e=ARGV[0]
end
end.parse!


average_score=($a.to_f+$b.to_f+$c.to_f+$d.to_f+$e.to_f)/5
puts "Average score of #{$a}, #{$b}, #{$c}, #{$d} and #{$e} is #{average_score}"
        
