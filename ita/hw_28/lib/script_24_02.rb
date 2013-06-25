# ========================================================================
# Script 		=	__28_02__
# ========================================================================
# Description 	=	"Input (Single JSON files)"
# Name 			=	"Masha Zanin"
# Email 		=	"mariazanin@comcast.net"
# ========================================================================

require 'optparse'
require 'mysql'

items=[]

OptionParser.new do |opts|
    opts.on("-i", "--input"){$sql_file=ARGV[0]}
    opts.on("-d", "--db"){$db_name=ARGV[0]}
    opts.on("-t", "--table"){$table_name=ARGV[0]}
end.parse!



puts "My favorite fruit is: #{element[script_name]["fruit_a"].chop} or #{element[script_name]["fruit_b"].chop}"
