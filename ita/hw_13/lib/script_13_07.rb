# ========================================================================
# Script 		=	__13_07__
# ========================================================================
# Description 	=	"Command-line Arguments"
# Name 			=	"Masha Zanin"
# Email 		=	"mariazanin@comcast.net"
# ========================================================================


re=/[A-Z][a-z]+\s[A-Z][a-z]+/
name=ARGV.join(" ").match re
puts "His name is: #{name}"
