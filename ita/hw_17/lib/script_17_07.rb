# ========================================================================
# Script 		=	__17_07__
# ========================================================================
# Description 	=	"Command-line Option"
# Name 			=	"Masha Zanin"
# Email 		=	"mariazanin@comcast.net"
# ========================================================================


require 'optparse'
OptionParser.new do |opts|
    opts.on("-s","--sentence") do
        $s=ARGV[0]
end

end.parse!



re=/[A-Z][a-z]+\s[A-Z][a-z]+/
name=ARGV.join(" ").match re
puts "His name is: #{name}"
        
