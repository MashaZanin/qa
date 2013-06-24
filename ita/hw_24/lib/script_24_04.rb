# ========================================================================
# Script 		=	__24_04__
# ========================================================================
# Description 	=	"Input (Single JSON files)"
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
if RUBY_PLATFORM=~/darwin/ then
    script_name=__FILE__.split("/").to_a.last
    else
    script_name=__FILE__
end


puts "My IP Address is: #{element[script_name]["oct_1"]}.#{element[script_name]["oct_2"]}.#{element[script_name]["oct_3"]}.#{element[script_name]["oct_4"]}"
