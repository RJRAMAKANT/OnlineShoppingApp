<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.binclass.AdminBean" %>
   

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="CSS/all.css">
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css'></link>
    <title>EDIT-ADMIN PROFILE</title>
    <style>
        footer{
    background-image: url(IMAGES/foimg.jpg);   
}
.newpassword{
display:none;
}
.btnsubmit{
display:none;
}
.oldpass{
display:none;
}

    </style>
 
</head>
<body class="container-fluid" onload="loaded()">
<%   AdminBean ab=(AdminBean)session.getAttribute("editAdmin"); 
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
         <a href="AdminDashboard.jsp "><img src="IMAGES/buy1.png" width="100px" height="100px"></a>
        </div>
         <div class="mt-3 welcomeadmin">ADMIN : <%=ab.getName() %></div>
        <div class="mt-3">
           <%--<a href="index.jsp" class="btn btn-danger">HOME</a> --%> 
            <%--<a href="AdminDashboard.jsp" class="btn btn-success ">BACK</a> --%>
            <a href="logout" class="btn btn-dark">LOGOUT</a>
            

        </div>
    </nav>
    <%Long mobile=0L; %>
    <%String Apassword=null;%>
   <section>
    <div class=" d-flex justify-content-center align-items-center mt-5 ">
       
        <div class="w-25 lform">
            <form class="m-lg-2 " action="editadminpassword" method="post">
                <div class="text-center mb-3 formuserheading">UPDATE PROFILE</div>
                <div class="mb-2 ">
                  <label for="name" class="form-label"> NAME</label>
                  <input type="text" class="form-control" id="name" value=<%=ab.getName() %> name="Name" readonly >
                </div>
                <div class="mb-2 ">
                    <label for="email" class="form-label">EMAIL</label>
                    <input type="email" class="form-control" id="email" value=<%=ab.getEmail() %> name="Mail" readonly>
                  </div>
                  <div class="mb-2 ">
                    <label for="number" class="form-label">PHONE</label>
                    <input type="NUMBER" class="form-control" id="number1" name="Phone1" placeholder="ENTER YOUR PHONE NUMBER" onblur="myFunction()">
                  </div>
                 <%mobile= %><%ab.getPhone() ;%>
                 <%Apassword =%><%ab.getPassword(); %>
                 
               
                 <input type="hidden" value="<%=mobile %>" name="phonenumber">
                <div class="mb-3 oldpass " id="oldpassword" >
                  <label for="exampleInputPassword1" class="form-label">Old Password</label>
                  <input type="password" class="form-control " id="password1" name="Password" placeholder="ENTER OLD PASSWORD" onblur="myFunction1()">
                </div>
                <div class="mb-3 newpassword" id="newpass">
                  <label for="exampleInputPassword1" class="form-label">NEW  Password</label>
                  <input type="password" class="form-control" id="password2" name="pass" placeholder="ENTER New PASSWORD"  onblur="myFunction2()"  required>
                </div>
                 
                
                <div class="mb-3 btnsubmit" id="buttonsubmit">
                <button type="submit" class="btn btn-primary form-control " >Submit</button>
                </div>
                
              </form>
        </div>
        
          
    </div>
</div>


    

   </section>

    <input type="hidden" value="<%=mobile %>" id="longnumber">
     <input type="hidden" value="<%=Apassword %>" id="apassword">
<input type="hidden" id="status" value="<%=request.getAttribute("statuss")%>">



    <footer class="mt-5">
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
        if(Status == "updated")
        	{
        	swal("Congrats","PASSWORD UPDATED SUCCESSFULLY","success");
        	}
        var phone1=document.getElemtById("longnumber").value;
        function myFunction() {
        	  let x = document.getElementById("number1").value;
        	  let y=document.getElementById("longnumber").value;
        	  if(x==y)
        	  {
        	    document.getElementById("oldpassword").style.display="block";
        	  }
        	}
        function myFunction1() {
      	  let a = document.getElementById("password1").value;
      	  let b=document.getElementById("apassword").value;
      	  if(a==b)
      	  {
      		 document.getElementById("newpass").style.display="block";
      	  }
      	}
        
        function myFunction2() {
        	 
        		 document.getElementById("buttonsubmit").style.display="block";
        	  
        	}
        
       
        </script>

</body>
</html>