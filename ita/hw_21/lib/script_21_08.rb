# ========================================================================
# Script 		=	__21_08__
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


puts "Here are sorted (alphabetically) words: #{lines.sort.join(" ")}"

        
