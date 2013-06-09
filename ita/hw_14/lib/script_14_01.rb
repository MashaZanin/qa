# ========================================================================
# Script 		=	__14_01__
# ========================================================================
# Description 	=	"Retrieving address (Mac)"
# Name 			=	"Masha Zanin"
# Email 		=	"mariazanin@comcast.net"
# ========================================================================


if RUBY_PLATFORM=~/32/ then
%x'ipconfig/all>ip.txt'
else
%x'ifconfig>ip.txt'
end

re=ARGV[0]

if re=='mac' then
    re=/([0-9a-fA-F]{2}(-|:)){5}[0-9a-fA-F]{2}/
elsif re=='ipv4' then
    re=/\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b/
elsif re=='ipv6' then
    re=/[\dA-Fa-f]{1,4}::([\dA-Fa-f]{1,4}(:[\dA-Fa-f]{1,4})+)?%(\d{2}|\w{2}\d)/
else
    re=/\w+/
end

file=File.read('ip.txt')
match=file.match re
puts "Mac address of your computer: #{match}"




