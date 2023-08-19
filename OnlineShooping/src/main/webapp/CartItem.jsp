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
        background-color: #01747a;
        
       }
       .modal-body{
        background-color:  #01747a;
        font-weight: bold;
        font-family:Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;
        color: white;
       }
       .modal-footer{
        background-color:  #01747a;
        color: white;
       }
    
    .cart-body{
    display: grid;
    grid-template-columns: 10fr 2fr ;
    justify-content:space-evenly;
}
.buy_form{
   
    <%-- background-color: #d8ebf0 --%>
    background-color: #ebf2f2;
    width: 100%;
    height:420px;
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


    
    
    </style>
 
</head>
<body class="container-fluid">
<%   UserBean ub=(UserBean)session.getAttribute("user"); %>
<% ArrayList<ProductBean>al=new ShowAllProductDAO().showAllProduct();%>
<% ArrayList<AddToCartBean>arr=(ArrayList<AddToCartBean>)session.getAttribute("cart"); %>


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
    
    <div class="cart-body cbody">
        <div>
            <table class="table table-light table-striped">
        
                <thead>
                    <tr>
                      <th scope="col">PID</th>
                      <th scope="col">PNAME</th>
                      <th scope="col">BRAND</th>
                      <th scope="col">PRICE</th>
                      <th scope="col">CATAGORI</th>
                      <th scope="col">TYPE</th>
                      <th scope="col">IMAGE</th>
                       <th scope="col">SIZE</th>
                         <th scope="col">QUANTITY</th>
                         <th scope="col">TOTAL PRICE</th>
                      <th scope="col">REMOVE</th>
                      <th>PLACE ORDER</th>
                    </tr>
                  </thead>
                  <%int sum=0;%>
                  <% for(int i=0;i<arr.size();i++)
           { %>
                   
                  <tbody>
                   <tr>
                  <% AddToCartBean acb=(AddToCartBean)arr.get(i); %>
                   
                     <td><%=acb.getPid()%></td>
                     <td><%=acb.getPname()%></td>
                     <td><%=acb.getPcompny() %></td>
                     <td ><%=acb.getPprice() %></td>
                     <td><%=acb.getPcatagori1() %></td>
                     <td><%=acb.getPcatagori2() %></td>
          <td><a href="pdetails?pid=<%=acb.getPid() %>&&pname=<%=acb.getPcatagori1() %>"><img src="product/<%=acb.getPimage() %>" width="80px" height="80px"></a></td>
                     <td><%=acb.getPsize() %></td>
                     <td><%=acb.getPqntity() %></td>
                     <%int qty= %><%acb.getPqntity(); %>
                     <%int pprice=qty* %><%acb.getPprice(); %>
                     <td><%=pprice %></td>
                     <td><a href="removecart?cartid=<%=acb.getCartid() %>" class="btn btn-danger">REMOVE</a></td>
                     <td><a href="buyalone?pid=<%=acb.getCartid() %>" class="btn btn-success">buy</a></td>
                   <%-- <td>
                     <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#exampleModal">
  BUY
</button>

<!-- Modal -->
<form action="orderproduct" method="post">
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">ORDER DETAILS</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      
        <table>
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
                        <td>TOTAL PRICE</td>
                        <td><input type="text" value="<%=pprice %>" readonly name="totalprice"></td>
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
                        <td>PRODUCT QUANTITY</td>
                        <td><input type="text" value="<%=acb.getPqntity() %>" readonly name="pqty"></td>
                    </tr>
                    <tr>
                        <td>PRODUCT BRAND</td>
                        <td><input type="text" value="<%=acb.getPcompny() %>" readonly name="pbrand"></td>
                    </tr>
                    
            
                </tbody>
            </table>
            
            <div>ADDRESS DETAILS</div>
            
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
                    
                    </tr>
 
                    
            
                </tbody>
            </table>
            
            
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">CANCEL</button>
        <button type="submit" class="btn btn-success">BUY</button>
        </form>
      </div>
                     
                     
                     
                     </td>--%>
                     
                     
                     
                   </tr>
                   
                 </tbody>
                 <%sum=sum+%><%pprice; %>
                 <%}%>
        
              </table>

        </div>


        <div>
          <div class="buy_form bac">
             <div class="pricedetail p-3">PRICE DETAILS</div>
            <div  class="carttable" >     
            <table>
                <tbody>
                    <tr>
                        <td>USER ID</td>
                        <td><%=ub.getCid() %></td>
                    </tr>
                    <tr>
                        <td>NAME</td>
                        <td><%=ub.getFname() %></td>
                    </tr>
                    <tr>
                        <td>DELIVERY CHARGES</td>
                        <td>FREE</td>
                    </tr>
                    <tr>
                        <td>SECURED PACKING FEE</td>
                        <td>FREE</td>
                    </tr>
                    
            
                </tbody>
            </table>
            </div>
            <div class="totalprice">TOTAL PRICE  : <%=sum %></div>

            
 <button type="button" class="btn btn-warning mt-1" data-bs-toggle="modal" data-bs-target="#exampleModal">
  PLACE ORDER
</button>

<!-- Modal -->
 <form action="orderproduct1" method="post">
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">ORDER DETAILS</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      
        <table>
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
                        <td>TOTAL PRICE</td>
                        <td><input type="text" value="<%=sum %>" readonly name="totalprice"></td>
                    </tr>
                     <tr>
                        <td>PRODUCT NAME</td>
                        <td><input type="text" value="ALL" readonly name="prdname"></td>
                    </tr>
                    <tr>
                        <td>PRODUCT SIZE</td>
                        <td><input type="text" value="ALL" readonly name="psize"></td>
                    </tr>
                      <tr>
                        <td>PRODUCT QUANTITY</td>
                        <td><input type="text" value="1" readonly name="pqty"></td>
                    </tr>
                    <tr>
                        <td>PRODUCT BRAND</td>
                        <td><input type="text" value="NONE" readonly name="pbrand"></td>
                    </tr>
                    
            
                </tbody>
            </table>
            
            <div>ADDRESS DETAILS</div>
            
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
                    
                    </tr>
 
                    
            
                </tbody>
            </table>
            
            
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">CANCEL</button>
        <button type="submit" class="btn btn-warning">BUY</button>
        </form>
      </div>
    </div>
  </div>
</div>
            
            
          </div>

        </div>
    </div>
    
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