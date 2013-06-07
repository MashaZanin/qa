# ========================================================================
# Script 		=	__05__
# ========================================================================
# Description 	=	"regex decomposition (US Zip Code) "
# Name 			=	"Masha Zanin"
# Email 		=	"mariazanin@comcast.net"
# ========================================================================


Variant #1:
 
US Zip Code	          REGEX
XXXXX or XXXXX-XXXX	  /(\d{5}-\d{4})|(\d{5})/

REGEX	  comment
/	      Delimiter
(\d{5}	  Digit - exactly 5
 -\d{4})  Hyphen with Digits – exactly 4
|	      Alternation (or)
(\d{5})	  Digits – exactly 5
/	      Delimiter




Variant #2:

US Zip Code         	REGEX
XXXXX or XXXXX-XXXX	    /\d{5}(-\d{4})?/

REGEX	   comment
/	     Delimiter
\d{5}	 Digits – exactly 5
(-\d{4}) Hyphen with Digits – exactly 4
?	     0 or 1 times
/	     Delimiter
