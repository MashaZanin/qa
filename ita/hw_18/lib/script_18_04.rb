# ========================================================================
# Script 		=	__18_04__
# ========================================================================
# Description 	=	"Trollop"
# Name 			=	"Masha Zanin"
# Email 		=	"mariazanin@comcast.net"
# ========================================================================


require 'trollop'

opts=Trollop::options do
    opt:first,"first_number", :short=>"-a", :type=>:int
    opt:second, "second_number", :short=>"-b", :type=>:int
    opt:third, "third_number", :short=>"-c", :type=>:int
    opt:fourth, "fourth_number", :short=>"-d", :type=>:int
    
end

puts "My IP Address is:#{opts[:first]}.#{opts[:second]}.#{opts[:third]}.#{opts[:fourth]}"




        
