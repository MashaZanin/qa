# ========================================================================
# Script 		=	__21_04__
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
    lines.push line.chomp
end

puts "My IP Address is:#{lines[0]}.#{lines[1]}.#{lines[2]}.#{lines[3]}"
