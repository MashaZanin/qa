# ========================================================================
# Script 		=	__17_08__
# ========================================================================
# Description 	=	"Command-line Option"
# Name 			=	"Masha Zanin"
# Email 		=	"mariazanin@comcast.net"
# ========================================================================


require 'optparse'
OptionParser.new do |opts|
    opts.on("-a","--sentence") do
        $s=ARGV[0]
end
    opts.on("-b","--sentence") do
        $s=ARGV[0]
end
    opts.on("-c","--sentence") do
        $s=ARGV[0]
end
    opts.on("-d","--sentence") do
        $s=ARGV[0]
end
end.parse!



puts "Here are sorted (alphabetically) words: #{ARGV.sort.join(" ")}"

        
