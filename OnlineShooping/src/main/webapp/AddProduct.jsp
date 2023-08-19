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
    <title>Document</title>
    <style>
        footer{
    background-image: url(IMAGES/foimg.jpg);
}
    </style>
 
</head>
<body class="container-fluid" onload="loaded()">
<%   AdminBean ab=(AdminBean)session.getAttribute("admin"); 
%>

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
        <div class="mt-3 welcomeadmin">ADMIN :<%=ab.getName() %></div>
        <div class="mt-3">
            <a href="index.jsp" class="btn btn-danger">HOME</a>
            <a href="AdminDashboard.jsp" class="btn btn-success ">BACK</a>
            <a href="logout" class="btn btn-dark">LOGOUT</a>
            

        </div>
    </nav>
   <section style="background-color: rgb(0, 82, 82);">
   
    <div class=" d-flex justify-content-center align-items-center mt-5 mb-5 ">
       
        <div class="w-50 lform" style="color: white;">
            <form class="mb-1" action="addproduct" method="post" enctype='multipart/form-data'>
                <div class="text-center mb-3 formuserheading">ADD PRODUCT</div>
                <div class="mb-2 ">
                  <label for="name" class="form-label">NAME</label>
                  <input type="text" class="form-control" id="name" name="pname" required>
                </div>
                <div class="mb-2 ">
                    <label for="compny" class="form-label">COMPNY</label>
                    <input type="text" class="form-control" id="cname"name="pcompny" required>
                  </div>
                  <div class="mb-2 ">
                    <label for="price" class="form-label">PRICE</label>
                    <input type="number" class="form-control" id="cname"name="pprice" required>
                  </div>
               
                 <div class="d-flex justify-content-around">
                  <div class="mt-3">
                  <label for="catagori">Product CATAGORIES</label>
                  <select name="catagori1" id="pcatagories">
                    <option value="man">MAN</option>
                    <option value="woman">WOMEN</option>
                    <option value="kid">KID</option>
                    <option value="electonic">ELECTONICS</option>
                    <option value="toys">TOYS</option>
                    <option value="grocory">GROCORY</option>
                  </select>
                  </div>

                  <div class="mt-3">
                    <label for="catagori">SUB CATAGORIES</label>
                    <select name="catagori2" id="pcatagories">
                      <option value="mshirt">Male shirt</option>
                      <option value="mjeans">Male jeans</option>
                      <option value="mtshirt">Male tshirt</option>
                      <option value="mhoodie">Male hoodies</option>
                      <option value="mfootwear">Male footwear</option>
                      
                      <option value="wkurti">FEMale KURTI</option>
                      <option value="wjeans">FEMale jeans</option>
                      <option value="wsaree">FEMale SAREE</option>
                      <option value="wtopwear">FEMale TopWear</option>
                    

                      <option value="kshirt">KID shirt</option>
                      <option value="kdress">KID DRESS</option>
                      <option value="kpants">KID PANTS</option>
                      

                      <option value="mobile">MOBILE</option>
                      <option value="laptop">LAPTOP</option>
                      <option value="desktop">DESKTOP</option>
                      <option value="tv">TV</option>
                     



                    </select>
                </div>
             </div>
             <div class="d-flex justify-content-around align-items-center mb-3">
                <div class="mb-2 ">
                    <label for="image1" class="form-label">IMAGE1</label>
                    <input type="file" class="form-control" id="cname"name="image1">
                  </div>
                  <div class="mb-2 ">
                    <label for="image2" class="form-label">IMAGE2</label>
                    <input type="file" class="form-control" id="cname"name="image2">
                  </div>
               
                
             </div>

               
                
                
                <button type="submit" class="btn btn-primary form-control">ADD PRODUCT</button>
                <input type="hidden" id="status" value="<%=request.getAttribute("status")%>">
              </form>
        </div>
        
          
    </div>
</div>




   </section>





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
        if(Status=="done")
        	{
        	swal("CONGRATULATION","PRODUCT ADDED SUCCESSFULLY","success");
        	}
           if(Status=="session")
        	   {
        	   swal("Sorry","session expired","error");
        	   }
           if(Status=="something")
        	   {
        	   swal("Sorry","Something went Wrong","error");
        	   }
           if(Status=="complete")
        	   {
        	   swal("done","product removed successfully","success");
        	   }
        </script>

</body>
</html>