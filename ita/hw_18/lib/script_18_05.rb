# ========================================================================
# Script 		=	__18_05__
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
    opt:fifth, "fifth_number", :short=>"-e", :type=>:int
    
end



average_score=(opts[:first].to_f+opts[:second].to_f+opts[:third].to_f+opts[:fourth].to_f+opts[:fifth].to_f)/5

puts "Average score of #{opts[:first]}, #{opts[:second]}, #{opts[:third]}, #{opts[:fourth]} and #{opts[:fifth]} is #{average_score.to_f}"

        
