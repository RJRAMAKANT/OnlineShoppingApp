<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  
    %>
    <%@page import="com.binclass.AdminBean" %>
     <%@page import="com.binclass.OrderBean" %>
    <%@page import="com.binclass.UserBean" %>
    <%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="CSS/all.css">
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css'></link>
    <title>Document</title>
    <style>
        footer{
    background-image: url(IMAGES/foimg.jpg);
}
.modal{
background-color:orange;
}

.modal-header{
        background-color: #99ffff;
        color:black;
       }
       .modal-body{
        background-color:#99ffff;
        font-weight: bold;
        font-family:Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;
        color:black;
       }
       .modal-footer{
        background-color: #99ffff;
        color: white;
       }
       .statussubmit{
       width:80%;
       
       }
       .country{
       background-color:white;
       border-style:none;
       
      
       }
       .select{
       width:80%;
       }
     .country{
     background-color:rgb(195, 192, 192);
     }
      
    </style>
 
</head>
<body class="container-fluid" onload="loaded()">

<% ArrayList<OrderBean>order= (ArrayList<OrderBean>)session.getAttribute("ob");
 //  UserBean ub=(UserBean)session.getAttribute("user");
%>
<%   AdminBean ab=(AdminBean)session.getAttribute("admin"); 
%>
 <input type="hidden" id="status" value="<%=request.getAttribute("status") %>">
    <div class="headeron ">
        <div class="hearderoff d-flex align-items-center justify-content-around " style="background-color: rgb(193, 185, 185);">
        <div class="freeshiping d-flex justify-content-around"> 
            <div class="fsworld me-5"><span class="bi bi-truck">&nbsp;</span>FREE SHIPPING WORLDWIDE</div>
            <div class="country ">
                <select>
                     <option>INDIA</option>
                    <option>USA</option>
                    <option>LONDON</option>
                </select>
            </div>
            <div class="rupees">
                <select>
                    <option>INR</option>
                    <option>USD</option>
                    
                </select>
            </div>
            <div class="language">
                <select>
                    <option>English</option>
                    <option>Hindi</option>
                    <option>Odia</option>
                </select>

            </div>
        </div>
        <div class="shipping d-flex ">
            <div class="me-3">Shipping </div>
            <div class="me-3">FAQ </div>
            <div class="me-3">Contact </div>
        </div>
        <div class="hlogo">
            <span class="fa fa-instagram me-3"></span>
            <span class="fa fa-facebook me-3"></span>
            <span class="fa fa-youtube me-3"></span>
            
        </div>
        </div>
    </div>
    <nav class="d-flex aligen-item-center justify-content-around bg-dark-subtle head w-100">
        <div>
         <a href="index.html" ><img src="IMAGES/buy1.png" width="100px" height="100px"></a>
        </div>
         <div class="mt-3 welcomeadmin">ADMIN : <%=ab.getName() %></div>
        <div class="mt-3">
            <a href="index.jsp" class="btn btn-danger">HOME</a>
            <a href="AdminDashboard.jsp" class="btn btn-success ">BACK</a>
            <a href="logout" class="btn btn-dark">LOGOUT</a>
            

        </div>
    </nav>
   <section>
   
    <table class="table table-dark table-striped">
        
        <thead>
            <tr>
              <th scope="col">OID</th>
              <th scope="col">UID</th>
              <th scope="col">UNAME</th>
             <%--<th scope="col">DEL-FEE</th> --%> 
             <%--<th scope="col">SEC-FEE</th> --%> 
              <th scope="col">TOTAL</th>
              <th scope="col">PROD NAME</th>
              <th scope="col">QTY</th>
               <th scope="col">SIZE</th>
              <th scope="col">BRAND</th>
              <th scope="col">ORDER-NAME</th>
              <th scope="col">HNO</th>
              <th scope="col">MOBILE</th>
              <th scope="col">AT</th>
              <th scope="col">DIST</th>
              <th scope="col">L-MARK</th>
              <th scope="col">PIN</th>
              <th scope="col">PAY </th>
              <th scope="col">STATUS</th>
              <th scope="col" class="ltd">REMARK</th>
              
            
            </tr>
          </thead>
           <% for(int i=0;i<order.size();i++)
           { %><tbody>
           <tr>
           <% OrderBean ob=(OrderBean)order.get(i); %>
             <td><%=ob.getOrderid()%></td>
             <td><%=ob.getUserid() %></td>
             <td><%=ob.getUname() %></td>
            <%--<td><%=ob.getDelfee() %></td> --%> 
           <%--<td><%=ob.getSecfee() %></td> --%>  
             <td><%=ob.getTotal() %></td>
             <td><%=ob.getProdname() %></td>
                 <td><%=ob.getPqty() %></td>
                 <td><%=ob.getPsize() %></td>
                  <td><%=ob.getBrand() %></td>
                   <td><%=ob.getOrdername() %></td>
                    <td><%=ob.getHno() %></td>
                     <td><%=ob.getMobile() %></td>
                      <td><%=ob.getAt() %></td>
                       <td><%=ob.getDist() %></td>
                        <td><%=ob.getLandmark() %></td>
                         <td><%=ob.getPin() %></td>
                          <td><%=ob.getPayment() %></td>
                           <td><%=ob.getStatus() %></td>
                           <td >
                           <form action="updateorderstatus" method="post">
   <select name="orderstatus" class="select">
  <option value="PENDING">PENDING</option>
  <option value="SHIPPING">SHIPPING</option>
  <option value="OUT FOR DELIVERY">OUT FOR DELIVERY</option>
  <option value="DELIVERED">DELIVERED</option>
</select>
<input type="hidden" value="<%=ob.getOrderid()%>" name="oid">
<input type="submit" class="btn btn-success statussubmit "value="UPDATE">
</form>
<%-- <a href="updateorderstatus?oid=<%=ob.getOrderid() %>&&orderstatus=<%request.getParameter("orderstatus1"); %>" class="btn btn-success">UPDATE</a></td>--%>
                         <%-- <td> <form action="updateorderstatus" method="post">
                           
                           <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
 UPDATE STATUS
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">CHANGE STATUS</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
         <input type="hidden" value="<%=ob.getOrderid()%>" name="oid">
           <input type="hidden" value="<%=ob.getUserid()%>" name="uid">
        <select name="orderstatus">
        <option value="PENDING">PENDING</option>
        <option value="SHIPPING">SHIPPING</option>
        <option value="OUT FOR DELIVER">OUT FOR DELIVER</option>
        <option value="DELIVERED">DELIVERED</option>
        </select>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-success">UPDATE</button>
      </div>
    </div>
  </div>
</div>
                           
                           
                          
                           </form>
                           </td> --%>
          
           </tr>
           
         </tbody>
        	   
        	   
        	<%}%>
        	
        	
  		  
         
        	  
        	  
        

      </table>
    
    



   </section>
  <input type="hidden" id="status" value="<%=request.getAttribute("update")%>">




    <footer >
        <div class="foothersearch text-center pt-4">Want style Ideas and Treats?</div>
        <div class="fsearch text-center mt-3">
            <input class="w-25" type="mail" placeholder="Enter Email *">
            <span><button class="fsearchbotton" onclick="subclick()">SUBSCRIBE</button></span>
        </div>
        <div class="ffooter d-flex justify-content-around mt-5 ">
         <div class="">
            <div class="brand-title"></div>
            <div class="shopperlogo">
                <span class="bi bi-facebook"></span>
                <span class="bi bi-youtube"></span>
                <span class="bi bi-twitter"></span>
                <span class="bi bi-instagram"></span>
                <span class="bi bi-linkedin"></span>
            </div>
         </div>
         <div>
            <div class="footer-title">SUPPORT</div>
            <div>Contact Us</div>
            <div>FAQs</div>
            <div>Size Guide</div>
            <div>Shipping & Returns</div>
         </div>
         <div>
            <div class="footer-title">SHOP</div>
            <div>Men's Shopping</div>
            <div>Women's Shopping</div>
            <div>Kids' Shopping</div>
            <div>Discounts</div>
         </div>
         <div>
            <div class="footer-title">COMPANY</div>
            <div>Our Story</div>
            <div>Careers</div>
            <div>Terms & Conditions</div>
            <div>Privacy & Cookie policy</div>
         </div>
         <div>
            <div class="footer-title">CONTACT</div>
            <address>
                <div>1-202-555-0105</div>
                <div>1-202-555-0106</div>
                <div>help@buyit.com</div>
            </address>
         </div>
         </div>
         <hr>
         <div class="ftrcopy d-flex justify-content-around">
            <div class="copyright1">© 2019 All rights reserved. Designed by RJRAMAKANT.</div>
            <div class="ftrcopy1 d-flex pb-2 ">
                <div class="p-1">
                    <img src="IMAGES/mastercard.png"width="80px" height="30px">
                </div>
                <div class="p-1">
                    <img src="IMAGES/SBI_Card_Logo.png"width="80px" height="30px">
                </div>
                <div class="p-1">
                    <img src="IMAGES/visa.png"width="80px" height="30px">
                </div>
                <div class="p-1">
                    <img src="IMAGES/PayPalCard.png"width="80px" height="30px">
                </div>
                <div class="p-1 ">
                    <img src="IMAGES/visapaywave.png"width="80px" height="30px">
                </div>
            </div>
         </div>
        </footer>
         
        
          
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>  
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>
        <script>
        var Status=document.getElementById("status").value;
        if(Status=="change")
        	{
        	swal("DONE","Status Updated Successfully","success");
        	}
        
       
       
        </script>

</body>
</html>