<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
}
.useradmin{
    position: relative;  
}
.useradmin1{
    position: absolute;
  
    top: -22px;
    right: -160px;
    background-color: #34caeb;
    padding: 5px;
    width: 150px;
    border-radius: 15px;
    text-align: center;
    display: none;
    transition: scaled 2s linear;
    
}
.useradmin1 h6{

    font-weight: bold;
}
.useradmin1 h6:hover{
 background-color:#96e8fa;
 border-radius:5px;
 transition:1s linear;
}
.show{
    display: block;
}
.useradmin1 a{
color:black;
}
    
    </style>
 
</head>
<body class="container-fluid">
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
         <div class="mt-4  useradmin ">
            <img src="./IMAGES/userpng.png"  id="myBtn" onclick="clicking()">
            <div class="useradmin1" id="myuser">
                 <a href="Login.jsp"><h6 class="mt-1">USER </h6></a>
                 <a href="AdminLogin.jsp"><h6>ADMIN </h6></a>
            </div>
        </div>
    </nav>
   <div class="catagories d-flex justify-content-center align-items-center">
    <div>
        <select >
            <option>MEN</option>
            <option>Shirts</option>
            <option>Jeans</option>
            <option>t-shirts</option>
            <option>Hoodies</option>
        </select>
    </div>
    <div>
        <select>
            <option>WOMEN</option>
            <option>Kurti</option>
            <option>Jeans</option>
            <option>Sarees</option>
            <option>Plazo</option>
        </select>

    </div>
    <div>
        <select>
            <option>KID</option>
            <option>Shirt</option>
            <option>Jeans</option>
            <option>Hoodie</option>
            
        </select>

    </div>
    <div>
        <select>
            <option>ELECTRONICS</option>
            <option>Mobile</option>
            <option>LAPTOP</option>
            <option>DESKTOP</option>
            <option>TV</option>
        </select>

    </div>
    <div>
        <select>
            <option>TOYS</option>
            <option>ALL</option>
           
        </select>

    </div>
    <div>
        <select>
            <option>GROCORY</option>
            <option>ALL</option>
            
        </select>

    </div>

   </div>
   <section>
    <div class="front h-100">
        <div >
            <div class="women">
                <div class="main-container">
                   <div class="title text-center ">WOMEN</div>
                   <a  href="Login.jsp" onclick="clicked()" class="btn btn-light w-50 shopwomen">Shop Women</a>
                </div>
             </div>
        </div>
        <div >
            <div class="men">
                <div class="main-container">
                   <div class="title text-center">MEN</div>
                   <a href="Login.jsp"  class="btn btn-light w-50 shopmen">Shop Men</a>
                </div>
             </div>
            
        </div>
        <div >
            <div class="kid">
                <div class="main-container">
                   <div class="title text-center">KID</div>
                   <a href="Login.jsp" class="btn btn-light w-50 shopkid">Shop Kid</a>
                </div>
             </div>
           
        </div>

    </div>
    <div class="shipping d-flex justify-content-around align-items-center mt-4 p-4">
        <div>
            <div class="free">FREE SHIPPING</div>
            <div class="wehave">From all orders over $100</div>

        </div>
        <div>
            <div class="free">FREE RETURNS</div>
            <div class="wehave">Return money within 30 days</div>
        </div>
        <div>
            <div class="free">SECURE SHOPPING</div>
            <div class="wehave">You're in safe hands</div>

        </div>
        <div>
            <div class="free">OVER 10,000 STYLES</div>
            <div class="wehave">We have everything you need</div>

        </div>
    </div>
   </section>
   <section>
    <div class="text-center mt-2 cmpara">NEW COLLECTIONS</div>
    <div class="text-center mt-1 review">Best Picks 2023</div>

    <div class="card-container">

        <div >
            <div class="fimage">
            <img src="IMAGES/lg2.png" width="100%" height="300px" alt="Dennis Lingo">
            <div class="inimage"><img src="IMAGES/lg2.1.png"width="270px" height="300px"></div>
            </div>
            <div class="pro">Naughty Nions</div>
            <div class="pname">girls solid color dress</div>
            <div class="mb-2">
                <span ><a href=""  onclick="clicked()" class="btn btn-success">add-cart</a></span>
                <span ><a href=""  onclick="clicked()" class="btn btn-warning">₹1219</a></span>
                <span ><a href=""  onclick="clicked()" class="btn btn-success">Details</a></span>
            </div>

        </div>

        <div  >
            <div class="fimage">
            <img src="IMAGES/c22.png" width="100%" height="300px">
            <div class="inimage"><img src="IMAGES/c2.png"width="270px" height="300px"></div>
            </div>
            <div class="pro">ROADSTER </div>
            <div class="pname">Men Navy Blue Casual Shirt</div>
            <div class="mb-2">
                <span ><a href="Login.jsp"  class="btn btn-success">add-cart</a></span>
                <span ><a href="Login.jsp"   class="btn btn-warning">₹519</a></span>
                <span ><a href="Login.jsp"   class="btn btn-success">Details</a></span>
            </div>

        </div>

        <div  >
            <div class="fimage">
                <img src="IMAGES/c3.png" width="100%" height="300px">
                <div class="inimage"><img src="IMAGES/c33.png"width="270px" height="300px"></div>
                </div>
            <div class="pro">ROADSTER</div>
            <div class="pname">Dennim Casual Shirt</div>
            <div class="mb-2">
                <span ><a href="Login.jsp"  onclick="clicked()" class="btn btn-success">add-cart</a></span>
                <span ><a href="Login.jsp"  onclick="clicked()" class="btn btn-warning">₹899</a></span>
                <span ><a href="Login.jsp"  onclick="clicked()" class="btn btn-success">Details</a></span>
            </div>

        </div>

        <div >
            <div class="fimage">
                <img src="IMAGES/c4.png" width="100%" height="300px">
                <div class="inimage"><img src="IMAGES/c44.png"width="270px" height="300px"></div>
                </div>
            <div class="pro">HERE & NOW</div>
            <div class="pname">Casual Summer Shirt</div>
            <div class="mb-2">
                <span ><a href="Login.jsp"  onclick="clicked()" class="btn btn-success">add-cart</a></span>
                <span ><a href="Login.jsp"  onclick="clicked()" class="btn btn-warning">₹759</a></span>
                <span ><a href="Login.jsp"  onclick="clicked()" class="btn btn-success">Details</a></span>
            </div>

        </div>

        <div >
            <div class="fimage">
                <img src="IMAGES/gs1.png" width="100%" height="300px">
                <div class="inimage"><img src="IMAGES/gs111.png"width="270px" height="300PX"></div>
                </div>
            <div class="pro">SASSAFRAS</div>
            <div class="pname">Black High Neck Cropped Top</div>
            <div class="mb-2">
                <span ><a href="Login.jsp"  onclick="clicked()" class="btn btn-success">add-cart</a></span>
                <span ><a href="Login.jsp"  onclick="clicked()" class="btn btn-warning">₹519</a></span>
                <span ><a href="Login.jsp"  onclick="clicked()" class="btn btn-success">Details</a></span>
            </div>

        </div>

        <div  >
            <div class="fimage">
                <img src="IMAGES/ks1.png" width="100%" height="300px">
                <div class="inimage"><img src="IMAGES/ks111.png"width="270px" height="300px"></div>
                </div>
            <div class="pro">A.T.U.N</div>
            <div class="pname">Girls Sharara & Dupatta</div>
            <div class="mb-2">
                <span ><a href="Login.jsp"  onclick="clicked()" class="btn btn-success">add-cart</a></span>
                <span ><a href="Login.jsp"  onclick="clicked()" class="btn btn-warning">₹519</a></span>
                <span ><a href="Login.jsp"  onclick="clicked()" class="btn btn-success">Details</a></span>
            </div>

        </div>

        <div >
            <div class="fimage">
                <img src="IMAGES/lg1.png" width="100%" height="300px">
                <div class="inimage"><img src="IMAGES/lg1.1.png"width="270px" height="300px"></div>
                </div>
            <div class="pro">A.T.U.N</div>
            <div class="pname">girl dress solid color</div>
            <div class="mb-2">
                <span ><a href="Login.jsp"  onclick="clicked()" class="btn btn-success">add-cart</a></span>
                <span ><a href="Login.jsp"  onclick="clicked()" class="btn btn-warning">₹519</a></span>
                <span ><a href="Login.jsp"  onclick="clicked()" class="btn btn-success">Details</a></span>
            </div>

        </div>

        <div  >
            <div class="fimage">
                <img src="IMAGES/saree1.png" width="100%" height="300px">
                <div class="inimage"><img src="IMAGES/saree1.1.png"width="270px" height="300px"></div>
                </div>
            <div class="pro">SAREE</div>
            <div class="pname"> NEW SAREE DESIGN</div>
            <div class="mb-2">
                <span ><a href="Login.jsp"  onclick="clicked()" class="btn btn-success">add-cart</a></span>
                <span ><a href="Login.jsp"  onclick="clicked()" class="btn btn-warning">₹1199</a></span>
                <span ><a href="Login.jsp"  onclick="clicked()" class="btn btn-success">Details</a></span>
            </div>

        </div>
        
        <div >
            <div class="fimage">
                <img src="IMAGES/saree2.png" width="100%" height="300px">
                <div class="inimage"><img src="IMAGES/saree2.1.png"width="270px" height="300px"></div>
                </div>
            <div class="pro">KARISHMA SAREE</div>
            <div class="pname">Women NEW DESIGN SAREE</div>
            <div class="mb-2">
                <span ><a href="Login.jsp"  onclick="clicked()" class="btn btn-success">add-cart</a></span>
                <span ><a href="Login.jsp"  onclick="clicked()" class="btn btn-warning">₹1599</a></span>
                <span ><a href="Login.jsp"  onclick="clicked()" class="btn btn-success">Details</a></span>
            </div>

        </div>

        <div  >
          <div class="fimage">
                <img src="IMAGES/hoodie1.png" width="100%" height="300px">
                <div class="inimage"><img src="IMAGES/hoodie1.1.png"width="270px" height="300px"></div>
                </div>
            <div class="pro">ROADSTER</div>
            <div class="pname"> BLACK HOODIE</div>
            <div class="mb-2">
                <span ><a href="Login.jsp"  onclick="clicked()" class="btn btn-success">add-cart</a></span>
                <span ><a href="Login.jsp"  onclick="clicked()" class="btn btn-warning">₹899</a></span>
                <span ><a href="Login.jsp"  onclick="clicked()" class="btn btn-success">Details</a></span>
            </div>

        </div>
        <div >
           <div class="fimage">
            <img src="IMAGES/hoodie2.png" width="100%" height="300px" alt="Dennis Lingo">
            <div class="inimage"><img src="IMAGES/hoodie2.1.png"width="270px" height="300px"></div>
            </div>
            <div class="pro">HIGHLANDER</div>
            <div class="pname">NEW HOODIE</div>
            <div class="mb-2">
                <span ><a href="Login.jsp"  onclick="clicked()" class="btn btn-success">add-cart</a></span>
                <span ><a href="Login.jsp"  onclick="clicked()" class="btn btn-warning">₹1599</a></span>
                <span ><a href="Login.jsp"  onclick="clicked()" class="btn btn-success">Details</a></span>
            </div>

        </div>

        <div  >
             <div class="fimage">
            <img src="IMAGES/shoe2.png" width="100%" height="300px">
            <div class="inimage"><img src="IMAGES/shoe2.1.png"width="270px" height="300px"></div>
            </div>
            <div class="pro">ROADSTER </div>
            <div class="pname">CASUAL SHOEES</div>
            <div class="mb-2">
                <span ><a href="Login.jsp"  onclick="clicked()" class="btn btn-success">add-cart</a></span>
                <span ><a href="Login.jsp"  onclick="clicked()" class="btn btn-warning">₹2599</a></span>
                <span ><a href="Login.jsp"  onclick="clicked()" class="btn btn-success">Details</a></span>
            </div>

        </div>
        <div  >
             <div class="fimage">
            <img src="IMAGES/shoe1.png" width="100%" height="300px">
            <div class="inimage"><img src="IMAGES/shoe1.1.png"width="270px" height="300px"></div>
            </div>
            <div class="pro">ROADSTER </div>
            <div class="pname">CASUAL SHOOESt</div>
            <div class="mb-2">
                <span ><a href="Login.jsp"  onclick="clicked()" class="btn btn-success">add-cart</a></span>
                <span ><a href="Login.jsp"  onclick="clicked()" class="btn btn-warning">₹1299</a></span>
                <span ><a href="Login.jsp"  onclick="clicked()" class="btn btn-success">Details</a></span>
            </div>

        </div>
        <div  >
            <div class="fimage">
            <img src="IMAGES/sw1.png" width="100%" height="300px">
            <div class="inimage"><img src="IMAGES/sw1.1.png"width="270px" height="300px"></div>
            </div>
            <div class="pro">ROADSTER </div>
            <div class="pname">SWEATER</div>
            <div class="mb-2">
                <span ><a href="Login.jsp"  onclick="clicked()" class="btn btn-success">add-cart</a></span>
                <span ><a href="Login.jsp"  onclick="clicked()" class="btn btn-warning">₹1099</a></span>
                <span ><a href="Login.jsp"  onclick="clicked()" class="btn btn-success">Details</a></span>
            </div>

        </div>
        <div  >
           <a href="Login.jsp"> <div class="fimage">
            <img src="IMAGES/RD1.png" width="100%" height="300px">
            <div class="inimage"><img src="IMAGES/rd1.1.png"width="270px" height="300px"></div>
            </div></a>
            <div class="pro">ROADSTER </div>
            <div class="pname">Men NEW SHHIRT COLLECTION</div>
            <div class="mb-2">
                <span ><a href="Login.jsp"  onclick="clicked()" class="btn btn-success">add-cart</a></span>
                <span ><a href="Login.jsp"  onclick="clicked()" class="btn btn-warning">₹999</a></span>
                <span ><a href="Login.jsp"  onclick="clicked()" class="btn btn-success">Details</a></span>
            </div>

        </div>


        

     </div>


     <div class="carousel slide mb-5" id="banners"  onclick="clicked()" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active " data-bs-interval="2000">
                <img src="IMAGES/carousel1.png" class="w-100">

            </div>
            <div class="carousel-item  "  onclick="clicked()" data-bs-interval="2000">
                <img src="IMAGES/carousel2.png" class="w-100">

            </div>
            <div class="carousel-item "  onclick="clicked()"  data-bs-interval="2000">
                <img src="IMAGES/carousel3.png" class="w-100">

            </div>
            <button class="carousel-control-prev" data-bs-slide="prev" data-bs-target="#banners">
                <span class="carousel-control-prev-icon"></span>
            </button>
            <button class="carousel-control-next" data-bs-slide="next" data-bs-target="#banners">
                <span class="carousel-control-next-icon"></span>
            </button>
            <div class="carousel-indicators">
                <button class="active" data-bs-slide-to="0" data-bs-target="#banners"></button>
                <button data-bs-slide-to="1" data-bs-target="#banners"></button>
                <button data-bs-slide-to="2" data-bs-target="#banners"></button>
                <button data-bs-slide-to="3" data-bs-target="#banners"></button>
            </div>
        </div>
    </div>

    <div class="mt-5 not">
        <div class="text-center what" >WHAT BUYERS SAYS</div>
        <div class="text-center review ">Latest buyers Reviews</div>


        <div class="cardbottom d-flex justify-content-around p-5" >
            <div class=" cardinner ">
                <div class="card-head1 d-flex">
                    <div>
                       <img src="IMAGES/c1.png" width="100px" height="100px">
                    </div>
                    <div class="card2nd">
                        <div class="p-lg-2">Shirts</div>
                        <div class="cdhd p-lg-2">Highlander casuals</div>
                        <div>
                            <span class="bi bi-star-fill"></span>
                            <span class="bi bi-star-fill"></span>
                            <span class="bi bi-star-fill"></span>
                            <span class="bi bi-star-fill"></span>
                            <span class="bi bi-star"></span>
                        </div>

                    </div>

                </div>
                <div class="cardpara mt-2">From creepth said moved given devide make multiply of him shall itself also
                     above second doesnot unto created saying land harb sea midset night wherin.</div>
               
                <div class="cardbd mt-2">Thukaram Yadav, 01 jun 2019</div>

            </div>
            <div>
                <div class=" cardinner  ">
                    <div class="card-head1 d-flex">
                        <div>
                           <img src="IMAGES/girl1.png" width="100px" height="100px">
                        </div>
                        <div class="card2nd">
                            <div class="p-lg-2">Kurtis</div>
                            <div class="cdhd p-lg-2">Women Kurtis </div>
                            <div>
                                <span class="bi bi-star-fill"></span>
                            <span class="bi bi-star-fill"></span>
                            <span class="bi bi-star-fill"></span>
                            <span class="bi bi-star-fill"></span>
                            <span class="bi bi-star"></span>
                            </div>
    
                        </div>
    
                    </div>
                    <div class="cardpara mt-2">God every fill great replenish darkness
                        unto. Very open. Likeness their that
                        light. Given under image fo. Subdue of
                        shall catile day fish form saw spirit and
                        given stars, us you whales may, land,
                        
                        saw fill unto.</div>
                   
                    <div class="cardbd mt-2">Sowjanya , 06 Apr 2023</div>
    
                </div>

            </div>
            <div>
                <div class=" cardinner w-75">
                    <div class="card-head1 d-flex">
                        <div>
                           <img src="IMAGES/c4.png" width="100px" height="100px">
                        </div>
                        <div class="card2nd">
                            <div class="p-lg-2">Shirts</div>
                            <div class="cdhd p-lg-2">Highlander casuals</div>
                            <div>
                                <span class="bi bi-star-fill"></span>
                            <span class="bi bi-star-fill"></span>
                            <span class="bi bi-star-fill"></span>
                            <span class="bi bi-star-fill"></span>
                            <span class="bi bi-star"></span>
                            </div>
    
                        </div>
    
                    </div>
                    <div class="cardpara mt-2">From creepth said moved given devide make multiply of him shall itself also
                         above second doesnot unto created saying land harb sea midset night wherin.God every fill great replenish darkness
                         unto. Very open.</div>
                   
                    <div class="cardbd mt-2">Rahul Kashyap, 10 Mar 2022</div>
    
                </div>

            </div>
        </div>


    </div>


   

   </section>
   <div class="shopercd" >
    <div class="companyn d-flex justify-content-center">
    <div class="companyname"><img src="./IMAGES/buy1.png" width="120px"height="120px"></div>
    </div>
    <div class="cmpara text-center">Appear, dry there darkness they're seas, dry waters</div>


    <div class="cardimage d-flex justify-content-center">
        <div class="crdimg1 p-2">
            <img src="IMAGES/CS1.jpg" width="150" height="150">

        </div>
        <div class="crdimg1 p-2">
            <img src="IMAGES/CS2.jpg" width="150" height="150">

        </div >
        <div class="crdimg1 p-2">
            <img src="IMAGES/CS3.jpg" width="150" height="150">

        </div>
        <div class="crdimg1 p-2">
            <img src="IMAGES/m44.png" width="150" height="150">

        </div>
        <div class="crdimg1 p-2">
            <img src="IMAGES/m5.png" width="150" height="150">

        </div>
        <div class="crdimg1 p-2">
            <img src="IMAGES/m6.png" width="150" height="150">

        </div>

    </div>

    <div class="cardimage1 d-flex justify-content-center">
        <div class="p-2">
            <img src="IMAGES/HNM.png" width="130px" height="50px">
        </div>
        <div class="p-2">
            <img src="IMAGES/LOGO8.png" width="150px" height="50px">
        </div>
        <div class="p-2">
            <img src="IMAGES/png 10.png" width="100px" height="50px">
        </div>
        <div class="p-2">
            <img src="IMAGES/png11.png" width="100px" height="50px">
        </div>
        <div class="p-2">
            <img src="IMAGES/Zara_(retailer)-Logo.wine.png" width="100px" height="50px">
        </div>
        <div class="p-2">
            <img src="IMAGES/LOGO6.png" width="100px" height="50px">
        </div>
        <div class="p-2">
            <img src="IMAGES/logo3.png" width="100px" height="50px">
        </div>
    </div>
</div>
</section>
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
    function clicked(){
        swal("SORRY","LOGIN REQUIRED");
    }
    function subclick(){
        swal("THANK YOU.");
    }
    
    
    function clicking()
    {
        document.getElementById("myuser").classList.toggle("show");
    }
   
</script>

  
</body>
</html>