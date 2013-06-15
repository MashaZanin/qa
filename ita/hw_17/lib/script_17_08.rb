# ========================================================================
# Script 		=	__17_08__
# ========================================================================
# Description 	=	"Command-line Option"
# Name 			=	"Masha Zanin"
# Email 		=	"mariazanin@comcast.net"
# ========================================================================


require 'optparse'
OptionParser.new do |opts|
    opts.on("-a","--first_season") do
        $a=ARGV[0]
end
    opts.on("-b","--second_season") do
        $b=ARGV[0]
end
    opts.on("-c","--third season") do
        $c=ARGV[0]
end
    opts.on("-d","--fourth_season") do
        $d=ARGV[0]
end
end.parse!



puts "Here are sorted (alphabetically) words: #{ARGV.sort.join(" ")}"

        
