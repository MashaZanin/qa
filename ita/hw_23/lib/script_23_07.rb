# ========================================================================
# Script 		=	__23_07__
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


re=/[A-Z][a-z]+\s[A-Z][a-z]+/
name=element["sent"].match re
puts "His name is: #{name}"
        