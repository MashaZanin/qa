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
    opt:seventh, "seventh_number", :short=>"-g", :type=>:int
    opt:eighth, "eighth_number", :short=>"-h", :type=>:int
    opt:ninth, "ninth_number", :short=>"-i", :type=>:int
    opt:tenth, "tenth_number", :short=>"-j", :type=>:int
end


summary=(opts[:first].to_f+opts[:second].to_f+opts[:third].to_f+opts[:fourth].to_f+opts[:fifth].to_f+opts[:sixth].to_f+opts[:seventh].to_f+opts[:eighth].to_f+opts[:ninth].to_f+opts[:tenth].to_f)/10


puts "The summury of the following numbers #{opts.join(",")} is: #{summary.to_f}"

        
