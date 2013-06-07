# =================================================================================
# Script 		=	__14_01__
# =================================================================================
# Description 	=	"Retrieving address (Mac, IPv4, IPv6)"
# Name 			=	"Masha Zanin"
# Email 		=	"mariazanin@comcast.net"
# =================================================================================

if Ruby_Platform=~/32/then
    %x'ipconfig /all>ip.txt'
else
    %x'ifconfig>ip.txt'
end

re=ARGV[0]

if re=='mac' then
    re=/\b([0-9a-fA-F]{2}(-|:)){5}[0-9a-fA-F]{2}\b/
elsif re=='ipv4' then
    re=/\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b/
elsif re=='ipv6' then
    re=/[\dA-Fa-f]{1,4}(:[\dA-Fa-f]{1,4})*::([\dA-Fa-f]{1,4}(:[\dA-Fa-f]{1,4})*)?%\d{2}/
else
    re=/\w+/
end

file=File.read('ip.txt')
match=file.match re
puts "Mac address of your computer: #{match}"

