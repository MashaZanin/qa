# ========================================================================
# Script 		=	__03__
# ========================================================================
# Description 	=	"regex [first and last name]"
# Name 			=	"Masha Zanin"
# Email 		=	"mariazanin@comcast.net"
# ========================================================================




 TEXT / REGEX

   They called him Smith, John

     [A-Z][a-z]+(,\s)[A-Z][a-z]+

   
   They called him John Smith or Smith, John

     [A-Z][a-z]+(\s|,\s)[A-Z][a-z]+

 
   They called him John

     [^(They)][A-Z][a-z]+


   They called him John Smith or Smith, John or just John

     [^(They)][A-Z][a-z]+((\s|,\s)+[A-Z][a-z]+)?
