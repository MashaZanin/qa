# ========================================================================
# Script 		=	__18_08__
# ========================================================================
# Description 	=	"Command-line Option"
# Name 			=	"Masha Zanin"
# Email 		=	"mariazanin@comcast.net"
# ========================================================================


require 'trollop'

opts=Trollop::options do
    opt:first,"first_season", :short=>"-a", :type=>:string
    opt:second, "second_season", :short=>"-b", :type=>:string
    opt:third, "third_season", :short=>"-c", :type=>:string
    opt:fourth, "fourth_season", :short=>"-d", :type=>:string

end

season=[]
season[0]=opts[:first]
season[1]=opts[:second]
season[2]=opts[:third]
season[3]=opts[:fourth]

puts "Here are sorted (alphabetically) words: #{season.sort.join(" ")}"

        
