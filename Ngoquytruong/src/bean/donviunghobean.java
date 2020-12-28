package bean;

public class donviunghobean {
	private String MaDVUH;
	private String HoTenNguoiDaiDien;
	//private String DiaChiNguoiDaiDien;
	//private String SoDTLienlac;
	//private String SoSMND;
	//private String STKNganhang;
	//private String TenNganHang;
	//private String chinhanhnganhang;
	//private String TenChuTKNganHang;
	public String getMaDVUH() {
		return MaDVUH;
	}
	public void setMaDVUH(String maDVUH) {
		MaDVUH = maDVUH;
	}
	public String getHoTenNguoiDaiDien() {
		return HoTenNguoiDaiDien;
	}
	public void setHoTenNguoiDaiDien(String hoTenNguoiDaiDien) {
		HoTenNguoiDaiDien = hoTenNguoiDaiDien;
	}
	public donviunghobean(String maDVUH, String hoTenNguoiDaiDien) {
		super();
		MaDVUH = maDVUH;
		HoTenNguoiDaiDien = hoTenNguoiDaiDien;
	}
	public donviunghobean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
