# ========================================================================
# Script 		=	__17_04__
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
    opts.on("-d","--fourth_number") do
        $d=ARGV[0]
end
end.parse!


ip=""
ARGV.each do|a|
    ip+=a
    ip+="."
end
ip=ip.chop
puts "My IP Address is:#{ip}"


        
