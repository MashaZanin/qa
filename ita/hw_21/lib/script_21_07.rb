# ========================================================================
# Script 		=	__21_07__
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
    lines.push line
end


re=/[A-Z][a-z]+\s[A-Z][a-z]+/
name=lines[0].match re
puts "His name is: #{name}"
        