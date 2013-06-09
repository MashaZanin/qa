# ========================================================================
# Script 		=	__04__
# ========================================================================
# Description 	=	"regex [phone number]"
# Name 			=	"Masha Zanin"
# Email 		=	"mariazanin@comcast.net"
# ========================================================================


 
PHONE NUMBER	                                        REGEX
(415)555-1212	                                        \(\d{3}\)\d{3}-\d{4}
(415)-555-1212	                                        \(\d{3}\)-\d{3}-\d{4}
(415)-555-1212 and (415) 555-1212	                    \(\d{3}\)(-|\s)\d{3}-\d{4}
415 555-1212   and (415)-555-1212 and (415) 555-1212	\(?\d{3}(\s|\)\s|\)-)\d{3}-\d{4}