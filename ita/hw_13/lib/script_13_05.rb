# ========================================================================
# Script 		=	__13_05__
# ========================================================================
# Description 	=	"Command-line Arguments"
# Name 			=	"Masha Zanin"
# Email 		=	"mariazanin@comcast.net"
# ========================================================================

a=ARGV[0]
b=ARGV[1]
c=ARGV[2]
d=ARGV[3]
e=ARGV[4]
average_score=(a.to_f+b.to_f+c.to_f+d.to_f+e.to_f)/5
puts "Average score of #{a}, #{b}, #{c}, #{d} and #{e} is #{average_score}"
