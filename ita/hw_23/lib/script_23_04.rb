# ========================================================================
# Script 		=	__23_04__
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


puts "My IP Address is: #{element["oct_1"]}.#{element["oct_2"]}.#{element["oct_3"]}.#{element["oct_4"]}"
