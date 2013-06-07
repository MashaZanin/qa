# ========================================================================
# Script 		=	__13_04__
# ========================================================================
# Description 	=	"Command-line Arguments"
# Name 			=	"Masha Zanin"
# Email 		=	"mariazanin@comcast.net"
# ========================================================================


ip=""
ARGV.each do|a|
ip+=a
ip+="."
end
ip=ip.chop
puts "My IP Address is:#{ip}"
