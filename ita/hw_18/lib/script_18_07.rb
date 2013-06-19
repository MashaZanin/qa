# ========================================================================
# Script 		=	__18_07__
# ========================================================================
# Description 	=	"Command-line Option"
# Name 			=	"Masha Zanin"
# Email 		=	"mariazanin@comcast.net"
# ========================================================================

require 'trollop'

opts=Trollop::options do
    opt:first,"sentence", :short=> "-s", :type=>:strings
end


re=/[A-Z][a-z]+\s[A-Z][a-z]+/

name=opts[:first].join(" ").match re

puts "His name is: #{name}"


        
