# ========================================================================
# Script 		=	__23_03__
# ========================================================================
# Description 	=	"Input (JSON files)"
# Name 			=	"Masha Zanin"
# Email 		=	"mariazanin@comcast.net"
# ========================================================================

require 'optparse'
require 'json'
OptionParser.new do |opts|
    opts.on("-i","--input") do
        $file_name=ARGV[0]
    end
end.parse!

json_file=File.read($file_name)
element=JSON.parse(json_file)

x=element["int_a"].to_i
y=element["int_b"].to_i

puts "When I am dividing #{x} by #{y} I am always have #{x/y}"
