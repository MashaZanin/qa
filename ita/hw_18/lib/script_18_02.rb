# ========================================================================
# Script 		=	__18_02__
# ========================================================================
# Description 	=	"Trollop"
# Name 			=	"Masha Zanin"
# Email 		=	"mariazanin@comcast.net"
# ========================================================================

require 'trollop'

opts=Trollop::options do
    opt:first,"first_fruit", :short=>"-f", :type=>:string
    opt:second, "second_fruit", :short=>"-s", :type=>:string
end

puts "My favorite fruit is: #{opts[:first].chop} and #{opts[:second].chop}"


        
