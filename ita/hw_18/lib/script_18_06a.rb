# ========================================================================
# Script 		=	__18_06b__
# ========================================================================
# Description 	=	"Command-line Option"
# Name 			=	"Masha Zanin"
# Email 		=	"mariazanin@comcast.net"
# ========================================================================


require 'trollop'

opts=Trollop::options do
    opt:first,"first_number", :short=>"-a", :type=>:int
    opt:second, "second_number", :short=>"-b", :type=>:int
    opt:third, "third_number", :short=>"-c", :type=>:int
    opt:fourth, "fourth_number", :short=>"-d", :type=>:int
    opt:fifth, "fifth_number", :short=>"-e", :type=>:int
    opt:sixth, "sixth_number", :short=>"-f", :type=>:int

end


summary=(opts[:first]+opts[:second]+opts[:third]+opts[:fourth]+opts[:fifth]+opts[:sixth])/6


puts "The summury of the following numbers #{opts.join(",")} is: #{summary}"

        
