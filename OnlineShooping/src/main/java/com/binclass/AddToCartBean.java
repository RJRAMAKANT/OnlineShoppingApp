package com.binclass;
import java.io.*;
@SuppressWarnings("serial")
public class AddToCartBean implements Serializable {
	private int cartid,userid,pid,pprice,pqntity;
	private String pname,pcompny,pcatagori1,pcatagori2,pimage,ufname,psize;
	public AddToCartBean()
	{
		
	}
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
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public int getPprice() {
		return pprice;
	}
	public void setPprice(int pprice) {
		this.pprice = pprice;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPcompny() {
		return pcompny;
	}
	public void setPcompny(String pcompny) {
		this.pcompny = pcompny;
	}
	public String getPcatagori1() {
		return pcatagori1;
	}
	public void setPcatagori1(String pcatagori1) {
		this.pcatagori1 = pcatagori1;
	}
	public String getPcatagori2() {
		return pcatagori2;
	}
	public void setPcatagori2(String pcatagori2) {
		this.pcatagori2 = pcatagori2;
	}
	public String getPimage() {
		return pimage;
	}
	public void setPimage(String pimage) {
		this.pimage = pimage;
	}
	public String getUfname() {
		return ufname;
	}
	public void setUfname(String ufname) {
		this.ufname = ufname;
	}
	public String getPsize() {
		return psize;
	}
	public void setPsize(String psize) {
		this.psize = psize;
	}
	public int getPqntity() {
		return pqntity;
	}
	public void setPqntity(int pqntity) {
		this.pqntity = pqntity;
	}
	
	 

}
