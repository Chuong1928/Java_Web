package bean;

public class dotunghobean {
	private String Madotungho;
	private String Madonviungho;
	private String Ngayungho;
	private String Hinhthucungho;
	private String Soluongungho;
	private String Donvitinh;
	public String getMadotungho() {
		return Madotungho;
	}
	public void setMadotungho(String madotungho) {
		Madotungho = madotungho;
	}
	public String getMadonviungho() {
		return Madonviungho;
	}
	public void setMadonviungho(String madonviungho) {
		Madonviungho = madonviungho;
	}
	public String getNgayungho() {
		return Ngayungho;
	}
	public void setNgayungho(String ngayungho) {
		Ngayungho = ngayungho;
	}
	public String getHinhthucungho() {
		return Hinhthucungho;
	}
	public void setHinhthucungho(String hinhthucungho) {
		Hinhthucungho = hinhthucungho;
	}
	public String getSoluongungho() {
		return Soluongungho;
	}
	public void setSoluongungho(String soluongungho) {
		Soluongungho = soluongungho;
	}
	public String getDonvitinh() {
		return Donvitinh;
	}
	public void setDonvitinh(String donvitinh) {
		Donvitinh = donvitinh;
	}
	public dotunghobean(String madotungho, String madonviungho, String ngayungho, String hinhthucungho,
			String soluongungho, String donvitinh) {
		super();
		Madotungho = madotungho;
		Madonviungho = madonviungho;
		Ngayungho = ngayungho;
		Hinhthucungho = hinhthucungho;
		Soluongungho = soluongungho;
		Donvitinh = donvitinh;
	}
	public dotunghobean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
