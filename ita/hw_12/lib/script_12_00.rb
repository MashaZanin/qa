# ==============================================================================================================================================================================================
# Script 		=	__12__
# ==============================================================================================================================================================================================
# Description 	=	"regex decomposition (US Telephone number)"
# Name 			=	"Masha Zanin"
# Email 		=	"mariazanin@comcast.net"
# ==============================================================================================================================================================================================


TEXT:
6504154545
650-415-4545
650.415.4545
650 415 4545
(650)-415-4545
(650).415.4545

regex:
^(?:(?:\+?1\s*(?:[.-]\s*)?)?
(?:\(\s*([2-9]1[02-9]|[2-9]
[02-8]1|[2-9][02-8][02-9])\s*\)|
([2-9]1[02-9]|[2-9][02-8]1|[2-9]
[02-8][02-9]))\s*(?:[.-]\s*)?)?
([2-9]1[02-9]|[2-9][02-9]1|[2-9]
[02-9]{2})\s*(?:[.-]\s*)?([0-9]
{4})(?:\s*(?:#|x\.?|ext\.?|extension)\s*(\d+))?$
           
           
           
regex                                               comment
           
^	                                                Start of line
(?:	                                                Start Passive Group
(?:\+?1\s*	                                        Start Passive Group: escaped Plus sign 0 or 1 time with ‘1’ followed by 0 or more spaces, 0 or 1 time
(?:[.-]\s*)?)?	                                    Start Passive Group: Period or Hyphen followed by 0 or more spaces, 0 or 1 time
(?:	                                                Start Passive Group:
\(\s*	                                            Escaped Open parenthesis followed by 0 or more spaces
([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9])\s*	3 DIGITS: Digit from 2 to 9 with Digit ‘1’ with Digit from 02 to 9 OR Digit from 2 to 9 with Digit from
                                                    03 to 8 with Digit ‘1’ OR Digit from 2 to 9      with Digit from 02 to 8 with Digit from 02 to 9 Followed by 0 or more spaces
\)	                                                Esaped Close parenthesis
|([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]))\s*	OR Digit from 2 to 9 with Digit ‘1’ with Digit from 02 to 9 OR Digit from 2 to 9 with Digit from 03 to 8 with Digit ‘1’ OR Digit from 2 to 9
                                                    with Digit from 02 to 8 with Digit from 02 to 9, end of group Followed by 0 or more spaces
(?:[.-]\s*)?)?	                                    Start Passive Group: Period or Hyphen followed by 0 or more spaces, 0 or 1 time
([2-9]1[02-9]|[2-9][02-9]1|[2-9][02-9]{2})\s*	    3 DIGITS: Digit from 2 to 9 with Digit ‘1’ with Digit from 02 to 9 OR Digit from 2 to 9 with Digit from 02 to 9 with Digit ‘1’ OR
                                                    Digit from 2 to 9 with Digit from 02 to 9 2 times Followed by 0 or more spaces
(?:[.-]\s*)?	                                    Passive Group: Period or Hyphen Followed by 0 or more spaces o or 1 times
([0-9]{4})	                                        Four Digits from 0 to 9
(?:\s*(?:#|x\.?|ext\.?|extension)\s*(\d+))?	        Passive Group: space with ‘# ‘OR ‘x’ OR ‘x.’ OR ‘ext’ OR ‘ext.’ OR ‘extension’  Followed by space with any digits, 0 or 1 time
$	                                                End of line
       
       
