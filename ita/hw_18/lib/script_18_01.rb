# ========================================================================
# Script 		=	__18_01__
# ========================================================================
# Description 	=	"Trollop"
# Name 			=	"Masha Zanin"
# Email 		=	"mariazanin@comcast.net"
# ========================================================================
require 'trollop'

opts=Trollop::options do
    opt:first, "first_fruit", :short=>"-f", :type=>:string
    opt:second, "second_fruit", :short=>"-s", :type=>:string
end

puts "My favorite fruits are: #{opts[:first]}s and #{opts[:second]}s"


        
