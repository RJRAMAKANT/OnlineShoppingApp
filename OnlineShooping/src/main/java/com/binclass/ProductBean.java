package com.binclass;
import java.io.*;
@SuppressWarnings("serial")
public class ProductBean implements Serializable{
	private int pid,price;
	private String pname,pcompany,pcatagori1,pcatagorie2,image1,image2;
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPcompany() {
		return pcompany;
	}
	public void setPcompany(String pcompany) {
		this.pcompany = pcompany;
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
	public String getImage1() {
		return image1;
	}
	public void setImage1(String image1) {
		this.image1 = image1;
	}
	public String getImage2() {
		return image2;
	}
	public void setImage2(String image2) {
		this.image2 = image2;
	}
	public ProductBean() {
		
	}
	
	

	
	
	

}
