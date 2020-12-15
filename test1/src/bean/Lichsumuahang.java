package bean;

public class Lichsumuahang {
	private String Mahoadon;
	private String Makh;
	private String Damua;
	private String Machitiethoadon;
	private double Soluongmua;
	private String Masach;
	private String Tensach;
	private double gia;
	private String maloai;
	private String anh;
	private String ngaymua;
	private String tacgia;
	public String getMahoadon() {
		return Mahoadon;
	}
	public void setMahoadon(String mahoadon) {
		Mahoadon = mahoadon;
	}
	public String getMakh() {
		return Makh;
	}
	public void setMakh(String makh) {
		Makh = makh;
	}
	public String getDamua() {
		return Damua;
	}
	public void setDamua(String damua) {
		Damua = damua;
	}
	public String getMachitiethoadon() {
		return Machitiethoadon;
	}
	public void setMachitiethoadon(String machitiethoadon) {
		Machitiethoadon = machitiethoadon;
	}
	public double getSoluongmua() {
		return Soluongmua;
	}
	public void setSoluongmua(double soluongmua) {
		Soluongmua = soluongmua;
	}
	public String getMasach() {
		return Masach;
	}
	public void setMasach(String masach) {
		Masach = masach;
	}
	public String getTensach() {
		return Tensach;
	}
	public void setTensach(String tensach) {
		Tensach = tensach;
	}
	public double getGia() {
		return gia;
	}
	public void setGia(double gia) {
		this.gia = gia;
	}
	public String getMaloai() {
		return maloai;
	}
	public void setMaloai(String maloai) {
		this.maloai = maloai;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public String getNgaymua() {
		return ngaymua;
	}
	public void setNgaymua(String ngaymua) {
		this.ngaymua = ngaymua;
	}
	public String getTacgia() {
		return tacgia;
	}
	public void setTacgia(String tacgia) {
		this.tacgia = tacgia;
	}
	public Lichsumuahang(String mahoadon, String makh, String damua, String machitiethoadon, double soluongmua,
			String masach, String tensach, double gia, String maloai, String anh, String ngaymua, String tacgia) {
		super();
		Mahoadon = mahoadon;
		Makh = makh;
		Damua = damua;
		Machitiethoadon = machitiethoadon;
		Soluongmua = soluongmua;
		Masach = masach;
		Tensach = tensach;
		this.gia = gia;
		this.maloai = maloai;
		this.anh = anh;
		this.ngaymua = ngaymua;
		this.tacgia = tacgia;
	}
	public Lichsumuahang() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
