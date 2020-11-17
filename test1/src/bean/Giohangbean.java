package bean;

public class Giohangbean {
	private String masach;
	private String tensach;
	private String anh;
	private String tacgia;
	private double giaban;
	private double soluong;
	private double thanhtien;
	public String getMasach() {
		return masach;
	}
	public void setMasach(String masach) {
		this.masach = masach;
	}
	public String getTensach() {
		return tensach;
	}
	public void setTensach(String tensach) {
		this.tensach = tensach;
	}
	public String getTacgia() {
		return tacgia;
	}
	public void setTacgia(String tacgia) {
		this.tacgia = tacgia;
	}
	public double getGiaban() {
		return giaban;
	}
	public void setGiaban(double giaban) {
		this.giaban = giaban;
	}
	public double getSoluong() {
		return soluong;
	}
	public void setSoluong(double soluong) {
		this.soluong = soluong;
	}
	public double getThanhtien() {
		return thanhtien;
	}
	public void setThanhtien(double thanhtien) {
		this.thanhtien = thanhtien;
	}
	
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public Giohangbean(String masach, String tensach, String tacgia,String url_anh, double giaban, double soluong) {
		super();
		this.masach = masach;
		this.tensach = tensach;
		this.anh=url_anh;
		this.tacgia = tacgia;
		this.giaban = giaban;
		this.soluong = soluong;
		//this.thanhtien = thanhtien;
	}
	public Giohangbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
