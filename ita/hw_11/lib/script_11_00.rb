# ==========================================================================================================================================
# Script 		=	__11__
# ==========================================================================================================================================
# Description 	=	"regex decomposition (IPv4 Address)"
# Name 			=	"Masha Zanin"
# Email 		=	"mariazanin@comcast.net"
# ==========================================================================================================================================



10.249.26.121
^(\d|[01]?\d\d|2[0-4]\d|25[0-5])\.(\d|[01]?\d\d|2[0-4]\d|25[0-5])\.(\d|[01]?\d\d|2[0-4]\d|25[0-5])\.(\d|[01]?\d\d|2[0-4]\d|25[0-5])$


regex                               comment


^                                   Start of line
(\d|                                One any digit OR
[01]?\d\d|                          Digit “0” or “1” 0 or 1 time with 2 any digits OR
2[0-4]\d|                           “2” with one of the digit from 0 to 4 with one any digit OR
25[0-5])                            “2” with “5” with one of the digit from 0 to 5
\.                                  FOLLOWED by escaped period


(\d|[01]?\d\d|2[0-4]\d|25[0-5])\.   One any digit OR Digit “0” or “1” 0 or 1 time with 2 any digits OR “2” with one of the digit from 0 to
                                    4 with one any digit OR “2” with “5” with one of the digit from 0 to 5 FOLLOWED by escaped period

(\d|[01]?\d\d|2[0-4]\d|25[0-5])\.   One any digit OR Digit “0” or “1” 0 or 1 time with 2 any digits OR “2” with one of the digit from 0 to
                                    4 with one any digit OR “2” with “5” with one of the digit from 0 to 5 FOLLOWED by escaped period

(\d|[01]?\d\d|2[0-4]\d|25[0-5])     One any digit OR Digit “0” or “1” 0 or 1 time with 2 any digits OR “2” with one of the digit from 0 to
                                    4 with one any digit OR “2” with “5” with one of the digit from 0 to 5

$                                   #  End of line

