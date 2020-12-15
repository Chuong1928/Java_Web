package bean;

public class ChitiethoadonBean {
	private String MaChiTietHD;
	private String MaSach;
	private double SoLuongMua;
	private String MaHoaDon;
	public String getMaChiTietHD() {
		return MaChiTietHD;
	}
	public void setMaChiTietHD(String maChiTietHD) {
		MaChiTietHD = maChiTietHD;
	}
	public String getMaSach() {
		return MaSach;
	}
	public void setMaSach(String maSach) {
		MaSach = maSach;
	}
	public double getSoLuongMua() {
		return SoLuongMua;
	}
	public void setSoLuongMua(double soLuongMua) {
		SoLuongMua = soLuongMua;
	}
	public String getMaHoaDon() {
		return MaHoaDon;
	}
	public void setMaHoaDon(String maHoaDon) {
		MaHoaDon = maHoaDon;
	}
	public ChitiethoadonBean(String maChiTietHD, String maSach, double soLuongMua, String maHoaDon) {
		super();
		MaChiTietHD = maChiTietHD;
		MaSach = maSach;
		SoLuongMua = soLuongMua;
		MaHoaDon = maHoaDon;
	}
	public ChitiethoadonBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
