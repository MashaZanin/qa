# ==========================================================================================================================================================
# Script 		=	__06__
# ==========================================================================================================================================================
# Description 	=	"regex decomposition (URL)"
# Name 			=	"Masha Zanin"
# Email 		=	"mariazanin@comcast.net"
# ==========================================================================================================================================================





http://www.khatilov.com;           http://www.khatilov.com:8080/ITA.html
(https?):\/\/([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9}(:\d{1,4})?([-\w\/#~:.?+=&%@~]*)
   
                                                                       
                                                                       
https?:                                                Protocol                                    http or https followed by a colon
                                     
\/\/                                                                                               two escaped forward slash
                                                                       
([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+ [a-zA-Z]{2,9}	       Domain name of the host computer 	       Matches any alphanumeric characters followed by a period
               ([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)	       Subdomain	
                                              +	       Domain 	
                                  [a-zA-Z]{2,9}	       Top-level domain
                                                                       
(:\d{1,4})?
                                                                       
([-\w\/#~:.?+=&%@~]*)	                               the path to the file, including port	       Matches colon with 1-4 digits 0 or 1 time
                                                                                                   and another word and non-word characters 
