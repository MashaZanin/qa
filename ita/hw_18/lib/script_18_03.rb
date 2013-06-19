# ========================================================================
# Script 		=	__18_03__
# ========================================================================
# Description 	=	"Trollop"
# Name 			=	"Masha Zanin"
# Email 		=	"mariazanin@comcast.net"
# ========================================================================

require 'trollop'

opts=Trollop::options do
    opt:first,"first_number", :short=>"-f", :type=>:int
    opt:second, "second_number", :short=>"-s", :type=>:int
end


puts "When I am dividing #{opts[:first]} by #{opts[:second]} I am always have #{opts[:first]/opts[:second]}"



        
