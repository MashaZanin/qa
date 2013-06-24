# ========================================================================
# Script 		=	__23_08__
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

season=[]
season[0]=element["s_1"]
season[1]=element["s_2"]
season[2]=element["s_3"]
season[3]=element["s_4"]

puts "Here are sorted (alphabetically) words: #{season.sort.join(" ")}"
