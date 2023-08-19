<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.binclass.UserBean" %> 
<%@ page import="java.util.ArrayList" %>   
<%@ page import="com.binclass.ProductBean" %>
<%@ page import="com.binclass.AddToCartBean" %>  
<%@ page import="com.daoclass.ShowAllProductDAO" %>
<%@page import="com.count.CartCountByIdDAO" %>

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
    <style >
    .women{
    background-image: url("IMAGES/gs2.png"); 
    position: relative;
}
.men{
    background-image: url("IMAGES/menmodel.jpg"); 
    position: relative;
}
.kid{
    background-image: url("IMAGES/kidmodel1.jpg"); 
    position: relative;
}
footer{
    background-image: url(IMAGES/foimg.jpg);
    margin-top:0px;
}
  .modal-title {
        font-weight: bold;
        align-items: center;
        color: white;
      }
       .modal-header{
        background-color: rgb(12, 5, 81);
        
       }
       .modal-body{
        background-color:  rgb(12, 5, 81);
        font-weight: bold;
        font-family:Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;
        color: white;
       }
       .modal-footer{
        background-color:  rgb(12, 5, 81);
        color: white;
       }
    
    .cart-body{
    display: grid;
    grid-template-columns: 9fr 3fr ;
    justify-content:space-evenly;
}
.buy_form{
    background-color: rgb(255, 172, 113);
    width: 100%;
    height:400px;
     text-align: center;
    font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;

    font-size: 18px;
    font-weight: bold;
}
 th,td{
        padding: 10px;
        text-align: left;
    }
    .carttable{
        border-bottom: 2px solid black;
    }
    .totalprice{
        border-bottom: 2px solid black;
        padding: 5px;
    }
    .pricedetail{
    border-bottom: 2px solid black;
}
.newform{
display: grid;
    grid-template-columns: 9fr 3fr ;
    justify-content: center;
    align-items:center;
   
    margin-left:10%;
     
}
#session{
background-color:#a6e3e0;
}
.seconddiv{
 margin-right:100px;

}
.submit{
  margin-left:50%;
  
}
table input{
border-style:none;
}


    
    
    </style>
 
</head>
<body class="container-fluid">
<%   UserBean ub=(UserBean)session.getAttribute("user"); %>
<%   AddToCartBean acb=(AddToCartBean)session.getAttribute("buyalone"); %>



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
            <a href="index.jsp" ><img src="IMAGES/buy1.png" width="100px" height="100px"></a>
        </div>
        <div>
            <form class="d-flex mt-3 ">
                <input class="w-100 me-3 form-control" type="search" placeholder="Search" aria-label="Search" >
                <button class="btn btn-outline-success" type="submit">Search</button>
              </form>
        </div>
        <div class="mt-3  ">
          
           
            

          <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
  <%=ub.getFname() %>
</button>

<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
         <div class="modal-title fs-5 text-center" id="staticBackdropLabel">USER PROFILE</div>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       <div>USER NAME :&nbsp;&nbsp;<%=ub.getFname() %>&nbsp;&nbsp;<%=ub.getLname() %></div>
        <div>EMAIL :&nbsp;&nbsp;<%=ub.getEmail() %></div>
        <div>PHONE :&nbsp;&nbsp;<%=ub.getPhone() %></div>
        <div>GENDER :&nbsp;&nbsp;<%=ub.getGender() %></div>
        <div>COUNTRY :&nbsp;&nbsp;<%=ub.getCountry() %></div>
    
      </div>
      <div class="modal-footer">
  <a href="oderpage?uid=<%=ub.getCid()%>"><button class="btn btn-success">MY ORDER</button></a>
        <a href="UserPage.jsp" class="btn btn-warning ">BACK</a>
        <a href="logout"><button class="btn btn-danger">LOGOUT</button></a>
      </div>
    </div>
  </div>
</div>

          
  </div>
    </nav>
   <%int pprice=0; %>
   <%int pqty=0; %>
    <section  id="session">
     <div class="text-center">ADDRESS AND PRODUCT DETAILS</div>
    <form  action="orderproduct"method="post">
    <div class="newform">
     <div class="firsttable">
     <table >
                <tbody>
                    <tr>
                        <td>USER ID</td>
                        <td><input type="text" value="<%=ub.getCid() %>" readonly name="userid"></td>
                    </tr>
                    <tr>
                        <td>NAME</td>
                        <td><input type="text" value="<%=ub.getFname() %>" readonly name="username"></td>
                    </tr>
                    <tr>
                        <td>DELIVERY CHARGES</td>
                         <td><input type="text" value="FREE" readonly name="dcharges"></td>
                    </tr>
                    <tr>
                        <td>SECURED PACKING FEE</td>
                        <td><input type="text" value="FREE" readonly name="packingfee"></td>
                    </tr>
                     <tr>
                        
                       <td>PRODUCT QUANTITY</td>
                        <% pqty= %><%acb.getPqntity(); %>
                        <td><input type="text" value="<%=pqty%>" readonly name="pqty"></td>
                    </tr>
                     <tr>
                        <td>PRODUCT NAME</td>
                        <td><input type="text" value="<%=acb.getPname() %>" readonly name="prdname"></td>
                    </tr>
                    <tr>
                        <td>PRODUCT SIZE</td>
                        <td><input type="text" value="<%=acb.getPsize() %>" readonly name="psize"></td>
                    </tr>
                      <tr>
                        <td>TOTAL PRICE</td>
                         <%int ppricee=pqty* %><%acb.getPprice(); %>
                          <td><input type="text" value="<%=ppricee%>" readonly name="totalprice"></td>
                    </tr>
                    <tr>
                        <td>PRODUCT BRAND</td>
                        <td><input type="text" value="<%=acb.getPcompny() %>" readonly name="pbrand"></td>
                    </tr>
                    
            
                </tbody>
            </table>
            
     </div>
    
         <div class="seconddiv">
          <table>
                <tbody>
                    <tr>
                        <td>NAME</td>
                        <td><input type="text" placeholder="ENTER NAME" name="ousername" required></td>
                    </tr>
                    <tr>
                        <td>HOUSE N0</td>
                        <td><input type="text" placeholder="house no" name="houseno" required></td>
                    </tr>
                    <tr>
                        <td>MOBILE</td>
                        <td><input type="NUMBER" placeholder="MOBILE NUMBER" name="mobile" required></td>
                    </tr>
                    <tr>
                        <td>AT/PO</td>
                        <td><input type="text" placeholder="AT/PO" name="atpo" required></td>
                    </tr>
                     <tr>
                        <td>DIST</td>
                        <td><input type="text" placeholder="DISTRICT" name="dist" required></td>
                    </tr>
                    <tr>
                        <td>LAND MARK</td>
                        <td><input type="text" placeholder="LAND MARK" name="landmark" required></td>
                    </tr>
                    <tr>
                        <td>PIN</td>
                        <td><input type="NUMBER" placeholder="PIN" name="pin" required></td>
                    </tr>
                  
                    <tr>
                        <td>PAYMENT METHOD</td>
                        <td><select name="paymentmethod">
                        <option value="cod">CASH ON DELIVERY</option>
                      <option value="card">BY CARD</option>
                      </select></td>
                 
                </tbody>
            </table>
         </div>
            
        </div>   
       <div class="submit"><button type="submit" class="btn btn-warning m-3 ">PLACE ORDER</button>  </div> 
    
    </form>
    </section>
    
    
      <footer  >
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
<script type="text/javascript">


</script>
</body>
</html>