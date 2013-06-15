# ========================================================================
# Script 		=	__17_06__
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
    opts.on("-f","--sixth_number") do
        $f=ARGV[0]
end
    opts.on("-g","--seventh_number") do
        $g=ARGV[0]
end
    opts.on("-h","--eighth_number") do
        $h=ARGV[0]
end
    opts.on("-i","--ninth_number") do
        $i=ARGV[0]
    end
    opts.on("-j","--tenth_number") do
        $j=ARGV[0]
    end
end.parse!



sum=0
a=0
b=0

ARGV.each do|num|
    sum+=num.to_f
end

summary=sum/ARGV.length
a,b=summary.to_s.split(".")
if b.to_i==0 then summary=summary.to_i end
puts "The summury of the following numbers #{ARGV.join(",")} is: #{summary}"
        
