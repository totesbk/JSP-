radio_servlet.html  ->(매핑 'RR')		
                       (Get방식)	-> doGet		-> RadioResult.java(서블릿)   
                       (Post방식)	-> doPost 	-> RadioResult.java(서블릿)   
                     			
select_jsp.html   	->(직접JSP파일로)  
                       		(Get방식)		-> select_get.jsp
                       		(Post방식)	-> select_post.jsp
                       
                       
check_jsp.html      ->(매핑 'ABC_Get')		->   (Get방식)	-> check_get.jsp
                    	->(매핑 'ABC_Get')  	->   (Post방식)	-> check_post.jsp
                    
                    
                    