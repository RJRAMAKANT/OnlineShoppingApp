package com.binclass;
import java.io.*;
@SuppressWarnings("serial")
public class WishListBean implements Serializable {
 private int cartid,userid,prodid,price;
 private String prodName,prodCompany,pcatagori1,pcatagorie2,pimage1,pimage2,userfname;
public int getCartid() {
	return cartid;
}
public void setCartid(int cartid) {
	this.cartid = cartid;
}
public int getUserid() {
	return userid;
}
public void setUserid(int userid) {
	this.userid = userid;
}
public int getProdid() {
	return prodid;
}
public void setProdid(int prodid) {
	this.prodid = prodid;
}
public int getPrice() {
	return price;
}
public void setPrice(int price) {
	this.price = price;
}
public String getProdName() {
	return prodName;
}
public void setProdName(String prodName) {
	this.prodName = prodName;
}
public String getProdCompany() {
	return prodCompany;
}
public void setProdCompany(String prodCompany) {
	this.prodCompany = prodCompany;
}
public String getPcatagori1() {
	return pcatagori1;
}
public void setPcatagori1(String pcatagori1) {
	this.pcatagori1 = pcatagori1;
}
public String getPcatagorie2() {
	return pcatagorie2;
}
public void setPcatagorie2(String pcatagorie2) {
	this.pcatagorie2 = pcatagorie2;
}
public String getPimage1() {
	return pimage1;
}
public void setPimage1(String pimage1) {
	this.pimage1 = pimage1;
}
public String getPimage2() {
	return pimage2;
}
public void setPimage2(String pimage2) {
	this.pimage2 = pimage2;
}
public String getUserfname() {
	return userfname;
}
public void setUserfname(String userfname) {
	this.userfname = userfname;
}
 
}
