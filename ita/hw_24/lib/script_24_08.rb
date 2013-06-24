# ========================================================================
# Script 		=	__24_08__
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

season=[]
season[0]=element[script_name]["s_1"]
season[1]=element[script_name]["s_2"]
season[2]=element[script_name]["s_3"]
season[3]=element[script_name]["s_4"]

puts "Here are sorted (alphabetically) words: #{season.sort.join(" ")}"
