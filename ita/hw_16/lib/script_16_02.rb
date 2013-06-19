# ========================================================================
# Script 		=	__16_02__
# ========================================================================
# Description 	=	"File count"
# Name 			=	"Masha Zanin"
# Email 		=	"mariazanin@comcast.net"
# ========================================================================

if RUBY_PLATFORM=~/32/ then
    %x'dir%HOMEDRIVE% > list.txt'
    
    else
    
    %x'cd $HOME;ls -la > list.txt'
    end

    sleep(10)

files_txt=/(\w+\.(txt))/
list=[]
    
    file=File.read('list.txt')
    file.scan(files_txt) do |all_match|
        list<<all_match
    end
    
    puts "Your home directory contains: #{list.size} txt files"


