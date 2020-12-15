package bean;

public class mathangbean {
	private String Mahang;
	private String Tenhang;
	private String Nhacungcap;
	private double soluong;
	private double gia;
	public String getMahang() {
		return Mahang;
	}
	public void setMahang(String mahang) {
		Mahang = mahang;
	}
	public String getTenhang() {
		return Tenhang;
	}
	public void setTenhang(String tenhang) {
		Tenhang = tenhang;
	}
	public String getNhacungcap() {
		return Nhacungcap;
	}
	public void setNhacungcap(String nhacungcap) {
		Nhacungcap = nhacungcap;
	}
	public double getSoluong() {
		return soluong;
	}
	public void setSoluong(double soluong) {
		this.soluong = soluong;
	}
	public double getGia() {
		return gia;
	}
	public void setGia(double gia) {
		this.gia = gia;
	}
	public mathangbean(String mahang, String tenhang, String nhacungcap, double soluong, double gia) {
		super();
		Mahang = mahang;
		Tenhang = tenhang;
		Nhacungcap = nhacungcap;
		this.soluong = soluong;
		this.gia = gia;
	}
	public mathangbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
