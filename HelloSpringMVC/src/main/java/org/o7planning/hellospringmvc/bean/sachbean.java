package org.o7planning.hellospringmvc.bean;

public class sachbean {
	private String masach;

	private String tensach;

	private Long gia;

	private Long soluong;

	private String anh;

	private String maloai;

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

	public Long getGia() {
		return gia;
	}

	public void setGia(Long gia) {
		this.gia = gia;
	}

	public Long getSoluong() {
		return soluong;
	}

	public void setSoluong(Long soluong) {
		this.soluong = soluong;
	}

	public String getAnh() {
		return anh;
	}

	public void setAnh(String anh) {
		this.anh = anh;
	}

	public String getMaloai() {
		return maloai;
	}

	public void setMaloai(String maloai) {
		this.maloai = maloai;
	}

	public sachbean(String masach, String tensach, Long gia, Long soluong, String anh, String maloai) {
		super();
		this.masach = masach;
		this.tensach = tensach;
		this.gia = gia;
		this.soluong = soluong;
		this.anh = anh;
		this.maloai = maloai;
	}

	public sachbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
