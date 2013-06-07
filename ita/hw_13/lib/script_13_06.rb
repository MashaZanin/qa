# ========================================================================
# Script 		=	__13_06__
# ========================================================================
# Description 	=	"Command-line Arguments"
# Name 			=	"Masha Zanin"
# Email 		=	"mariazanin@comcast.net"
# ========================================================================

sum=0
a=0
b=0
ARGV.each do|num|
sum+=num.to_f
end
summary=sum/ARGV.length
a,b=summary.to_s.split(".")
if b.to_i==0 then summary=summary.to_i end
puts "The summury of the following numbers #{ARGV.join(",")} is: #{summary}"
