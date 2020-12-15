package bean;

public class Hoadonbean {
	private String MaHoaDon;
	private String Makh;
	private String NgayMua;
	private String damua;
	public String getMaHoaDon() {
		return MaHoaDon;
	}
	public void setMaHoaDon(String maHoaDon) {
		MaHoaDon = maHoaDon;
	}
	public String getMakh() {
		return Makh;
	}
	public void setMakh(String makh) {
		Makh = makh;
	}
	public String getNgayMua() {
		return NgayMua;
	}
	public void setNgayMua(String ngayMua) {
		NgayMua = ngayMua;
	}
	public String getDamua() {
		return damua;
	}
	public void setDamua(String damua) {
		this.damua = damua;
	}
	public Hoadonbean(String maHoaDon, String makh, String ngayMua, String damua) {
		super();
		MaHoaDon = maHoaDon;
		Makh = makh;
		NgayMua = ngayMua;
		this.damua = damua;
	}
	public Hoadonbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
