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
    h2{
    text-align:center;
    font-family:cooper black;
    }
    .userdetails{
    text-align:center;
    }
    .userdetails div{
    font-weight:bold;
    }
    .ud{
    font-size:20px;
    color:yellow;
    font-family:cooper black;
    
    }
    body{
    background-color:#35a6a2;
    }
    h3{
    text-align:center;
    font-family:cooper black;
    }
    .aandp{
    display:flex;
    align-items:center;
    justify-content:center;
    }
    .inside span{
    padding:100px;
    }
    table td{
      padding-right:20px;
      padding-buttom:5px;
    }
    table{
    font-weight:bold;
    font-size:16px;
    }
   h5{
   text-align:center;
   color:yellow;
   font-weight:bold;
   }
   .printbutton{
   text-align:center;
   }
    </style>
 
</head>
<body class="container-fluid" onload="loaded()">

<%   OrderBean ob=(OrderBean)session.getAttribute("orderbyoid"); 
%>
<h2>ORDER RECIPET</h2>
<hr>
<div class="userdetails">
<div class="ud">USER DETAILS</div>
 <div>USER ID :<%=ob.getUserid() %></div>
<div>USER NAME :<%=ob.getUname() %></div>
</div>
<hr>
<h3>ADDRESS & PRODUCT DETAILS</h3>
<div class="aandp">
  <div class="inside">
    <table>
     <tbody>
      <tr>
      <td>NAME :&nbsp;<%=ob.getOrdername() %></td>
     <td>HOUSE NO :&nbsp;<%=ob.getHno() %></td>
      </tr>
      <tr>
      <td>PRODUCT NAME :&nbsp;<%=ob.getProdname() %></td>
      <td>QUANTITY :&nbsp;<%=ob.getPqty() %></td>
      </tr>
       <tr>
      <td>SIZE :&nbsp;<%=ob.getPsize() %></td>
      <td>BRAND:&nbsp;<%=ob.getBrand() %></td>
      </tr>
      
        <tr>
      <td>AT/PO :&nbsp;<%=ob.getAt() %></td>
      <td>DIST :&nbsp;<%=ob.getDist() %></td>
      </tr>
      
       <tr>
      <td>MOBILE:&nbsp;<%=ob.getHno() %></td>
      <td>PIN CODE :&nbsp;<%=ob.getPin() %></td>
      </tr>
      
       <tr>
      <td>LAND MARK :&nbsp;<%=ob.getLandmark() %></td>
      <td>PAYMENT METHOD :&nbsp;<%=ob.getPayment() %></td>
      </tr>
      
        <tr>
      <td>DELIVERY-FEE :&nbsp;<%=ob.getDelfee() %></td>
      <td>PACKING FEE :&nbsp;<%=ob.getSecfee() %></td>
      </tr>
      
        <tr>
      <td>STATUS :&nbsp;<%=ob.getStatus() %></td>
      <td>TOTAL PRICE :&nbsp;<%=ob.getTotal() %></td>
      </tr>
  
     </tbody>
    </table>
  </div>
   
   


</div>

<hr>
<h5>NOTE:THANK YOU, VISIT AGAIN.</h5>
<div class="printbutton mt-1">
<span><button onclick="window.print()" class="btn btn-danger ">PRINT</button></span>
<span><a href="UserPage.jsp" class="btn btn-warning">CONTINUE SHOPPING</a></span>

</div>

         
        
          
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>  
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>
        <script>
     
       
       
        </script>

</body>
</html>