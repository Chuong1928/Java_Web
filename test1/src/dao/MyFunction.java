package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

import bean.Lichsumuahang;
import bean.khachhangbean;
import bean.Giohangbean;
import bean.sachbean;

public class MyFunction {
	DungChung dc=new DungChung();
	ArrayList<Lichsumuahang> ds =new ArrayList<Lichsumuahang>();
	public double sum_Price(double soluong,double gia) {
		return soluong*gia;
	}
	

	public int Count_Sum_HD(ArrayList<Lichsumuahang> ds) {  
		Collections.sort(ds, new Comparator<Lichsumuahang>() {
	           @Override
	           public int compare(Lichsumuahang sv1, Lichsumuahang sv2) {
	               return (sv1.getMahoadon().compareTo(sv2.getMahoadon()));
	      
	           }
	       });
				int count=0;
				for(int i=0;i<ds.size();i++) {
					if(i+1==ds.size()) {
						break;
					}else if(ds.get(i).getMahoadon().equalsIgnoreCase(ds.get(i+1).getMahoadon())) {
						count++;
					}
				}
				return ds.size()-count;
	}
	public int DemSum(ArrayList<Lichsumuahang> ds,String m) {
		int count=0;
		for(int i=0;i<ds.size();i++) {
			if(ds.get(i).getMahoadon().equalsIgnoreCase(m)) {
				count++;
			}
		}
		return count;
	}
	
	public boolean check_login(String username,String password)throws Exception {
		dc.KetNoi();
		boolean status=false;
		
			String sql="SELECT * FROM KhachHang WHERE tendn=? and pass=?";
			try {
				PreparedStatement cmd=dc.cn.prepareStatement(sql);
				cmd.setString(1, username);
				cmd.setString(2, password);
				ResultSet rs = cmd.executeQuery();
				status=rs.next();
				System.out.println(sql);
				//System.out.println(status);
				
			} catch (Exception e) {
					e.printStackTrace();
			}
		return status;
	}
	public boolean check_makh(String makh)throws Exception {
		dc.KetNoi();
		boolean status=false;
		
			String sql="SELECT * FROM KhachHang WHERE Makh=?";
			try {
				PreparedStatement cmd=dc.cn.prepareStatement(sql);
				cmd.setString(1, makh);
				ResultSet rs = cmd.executeQuery();
				status=rs.next();
				System.out.println(sql);
				//System.out.println(status);
				
			} catch (Exception e) {
					e.printStackTrace();
			}
		return status;
	}	
	public boolean check_tendn(String tendn)throws Exception {
		dc.KetNoi();
		boolean status=false;
		
			String sql="SELECT * FROM KhachHang WHERE tendn=?";
			try {
				PreparedStatement cmd=dc.cn.prepareStatement(sql);
				cmd.setString(1, tendn);
				ResultSet rs = cmd.executeQuery();
				status=rs.next();
				System.out.println(sql);
				//System.out.println(status);
				
			} catch (Exception e) {
					e.printStackTrace();
			}
		return status;
	}
	public int Sign_up(String makh,String hoten,String diachi,String sodth,String email,String tendn,String pass)throws Exception {
		dc.KetNoi();
		String sql="INSERT INTO KhachHang(makh,hoten,diachi,sodt,email,tendn,pass)"
				+ "VALUES(?,?,?,?,?,?,?)";
		try {
			PreparedStatement cmd=dc.cn.prepareStatement(sql);
			cmd.setString(1, makh);
			cmd.setString(2, hoten);
			cmd.setString(3, diachi);
			cmd.setString(4, sodth);
			cmd.setString(5, email);
			cmd.setString(6, tendn);
			cmd.setString(7, pass);
			System.out.println(sql);
			return cmd.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
		}
		
	}
	public int TaoHoaDon(String MaHoaDon,String makh,String NgayMua,String damua)throws Exception {
		dc.KetNoi();
		String sql="INSERT INTO hoadon(MaHoaDon,makh,NgayMua,damua)"
				+ "VALUES(?,?,?,?)";
		try {
			PreparedStatement cmd=dc.cn.prepareStatement(sql);
			cmd.setString(1, MaHoaDon);
			cmd.setString(2, makh);
			cmd.setString(3, NgayMua);
			cmd.setString(4, damua);
			System.out.println(sql);
			return cmd.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
		}
	}
	public int TaoChiTietHD(String MaChiTietHD,String Masach,String SoLuongMua,String MaHoaDon) throws Exception {
		dc.KetNoi();
		String sql="INSERT INTO hoadon(MaChiTietHD,Masach,SoLuongMua,MaHoaDon)"
				+ "VALUES(?,?,?,?)";
		try {
			PreparedStatement cmd=dc.cn.prepareStatement(sql);
			cmd.setString(1, MaChiTietHD);
			cmd.setString(2, Masach);
			cmd.setString(3, SoLuongMua);
			cmd.setString(4, MaHoaDon);
			System.out.println(sql);
			return cmd.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
		}
	}
	
	public ArrayList<Lichsumuahang> DonHangCanThanhToan(String makh) throws Exception{
		ArrayList<Lichsumuahang> cthd=new ArrayList<Lichsumuahang>();
		dc.KetNoi();
		String sql="SELECT * FROM hoadon INNER JOIN ChiTietHoaDon ON ChiTietHoaDon.MaHoaDon = hoadon.MaHoaDon INNER JOIN "
				+ "sach ON sach.masach = ChiTietHoaDon.MaSach INNER JOIN KhachHang"
				+ " ON KhachHang.makh = hoadon.makh WHERE tendn=? AND damua=0";
		try {
			PreparedStatement cmd=dc.cn.prepareStatement(sql);
			cmd.setString(1, makh);
			ResultSet rs=cmd.executeQuery();
			while(rs.next()) {
				String makhachhang=rs.getString("makh");
				String mahoadon=rs.getString("Mahoadon");
				String damua=rs.getString("damua");
				String Masach=rs.getString("Masach");
				String machitiethoadon=rs.getString("MaChiTietHD");
				String Soluongmua=rs.getString("Soluongmua");
				String tensach=rs.getString("tensach");
				String gia=rs.getString("gia");
				String maloai=rs.getString("maloai");
				String anh=rs.getString("anh");
				String ngaymua=rs.getString("Ngaymua");
				String tacgia=rs.getString("tacgia");
				Lichsumuahang ct=new Lichsumuahang(mahoadon, makhachhang, damua, machitiethoadon, Double.parseDouble(Soluongmua), Masach, tensach, Double.parseDouble(gia), maloai, anh, ngaymua, tacgia);
				cthd.add(ct);
			}rs.close();dc.cn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return cthd;
	}
	
	public ArrayList<Lichsumuahang> Chitiethoadon(String makh) throws Exception{
		ArrayList<Lichsumuahang> cthd=new ArrayList<Lichsumuahang>();
		dc.KetNoi();
		String sql="SELECT * FROM hoadon INNER JOIN ChiTietHoaDon ON ChiTietHoaDon.MaHoaDon = hoadon.MaHoaDon INNER JOIN "
				+ "sach ON sach.masach = ChiTietHoaDon.MaSach INNER JOIN KhachHang"
				+ " ON KhachHang.makh = hoadon.makh WHERE tendn=?";
		try {
			PreparedStatement cmd=dc.cn.prepareStatement(sql);
			cmd.setString(1, makh);
			ResultSet rs=cmd.executeQuery();
			while(rs.next()) {
				String makhachhang=rs.getString("makh");
				String mahoadon=rs.getString("Mahoadon");
				String damua=rs.getString("damua");
				String Masach=rs.getString("Masach");
				String machitiethoadon=rs.getString("MaChiTietHD");
				String Soluongmua=rs.getString("Soluongmua");
				String tensach=rs.getString("tensach");
				String gia=rs.getString("gia");
				String maloai=rs.getString("maloai");
				String anh=rs.getString("anh");
				String ngaymua=rs.getString("Ngaymua");
				String tacgia=rs.getString("tacgia");
				Lichsumuahang ct=new Lichsumuahang(mahoadon, makhachhang, damua, machitiethoadon, Double.parseDouble(Soluongmua), Masach, tensach, Double.parseDouble(gia), maloai, anh, ngaymua, tacgia);
				cthd.add(ct);
			}rs.close();dc.cn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return cthd;
	}
	public ArrayList<Giohangbean> lsmuahangv2(String makh)throws Exception{
		ArrayList<Giohangbean> lsmh = new ArrayList<Giohangbean>();
		dc.KetNoi();
		String sql="SELECT * FROM hoadon INNER JOIN ChiTietHoaDon ON ChiTietHoaDon.MaHoaDon = hoadon.MaHoaDon INNER JOIN "
				+ "sach ON sach.masach = ChiTietHoaDon.MaSach INNER JOIN KhachHang"
				+ " ON KhachHang.makh = hoadon.makh WHERE tendn=?";

				try {
					PreparedStatement cmd=dc.cn.prepareStatement(sql);
					cmd.setString(1, makh);
					ResultSet rs=cmd.executeQuery();
					while(rs.next()) {
						String masach=rs.getString("masach");
						String tensach=rs.getString("tensach");
						int gia=rs.getInt("gia");
						String tacgia=rs.getString("tacgia");
						String img=rs.getString("anh");
						String loai=rs.getString("maloai");
						String giaban=rs.getString("gia");
						String soluong=rs.getString("soluong");
					//	ds.add(new sachbean("s0","Từ Ngữ Hán Việt","ha1",60000,"http://www.minhkhai.vn/hinhlon/8935087502012.jpg","Loai1"));
						//sachbean sach=new sachbean(masach, tensach, tacgia,gia, img, loai);
						Giohangbean ghb=new Giohangbean(masach, tensach, tacgia, img, Double.parseDouble(giaban), Double.parseDouble(soluong));
						lsmh.add(ghb);
					}	rs.close();dc.cn.close();
				} catch (Exception e) {
					// TODO: handle exception
				}

		return lsmh;
	}				
public ArrayList<khachhangbean> Thongtinkhachhang(String tendn)throws Exception{
	ArrayList<khachhangbean> thongtin = new ArrayList<khachhangbean>();
	dc.KetNoi();
	String sql = "SELECT * FROM KhachHang WHERE tendn=?";
	try {
		PreparedStatement cmd=dc.cn.prepareStatement(sql);
		cmd.setString(1, tendn);
		ResultSet rs=cmd.executeQuery();
		while(rs.next()) {
			String makh=rs.getString("makh");
			String hoten=rs.getString("hoten");
			String diachi=rs.getString("diachi");
			String sodt=rs.getString("sodt");
			String email=rs.getString("email");
			String matkhau=rs.getString("pass");
		//	ds.add(new sachbean("s0","Từ Ngữ Hán Việt","ha1",60000,"http://www.minhkhai.vn/hinhlon/8935087502012.jpg","Loai1"));
			//sachbean sach=new sachbean(masach, tensach, tacgia,gia, img, loai);
			//Giohangbean ghb=new Giohangbean(masach, tensach, tacgia, img, Double.parseDouble(giaban), Double.parseDouble(soluong));
			khachhangbean kh = new khachhangbean(makh, hoten, diachi, sodt,email, tendn, matkhau);
			thongtin.add(kh);
		}	rs.close();dc.cn.close();
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	return thongtin;
}
public ArrayList<sachbean> lsmuahang(String makh)throws Exception{
	ArrayList<sachbean> lsmh = new ArrayList<sachbean>();
	dc.KetNoi();
	String sql="SELECT * FROM hoadon INNER JOIN ChiTietHoaDon ON ChiTietHoaDon.MaHoaDon = hoadon.MaHoaDon INNER JOIN "
			+ "sach ON sach.masach = ChiTietHoaDon.MaSach INNER JOIN KhachHang ON KhachHang.makh = hoadon.makh WHERE tendn=?";

			try {
				PreparedStatement cmd=dc.cn.prepareStatement(sql);
				cmd.setString(1, makh);
				ResultSet rs=cmd.executeQuery();
				while(rs.next()) {
					String masach=rs.getString("masach");
					String tensach=rs.getString("tensach");
					int gia=rs.getInt("gia");
					String tacgia=rs.getString("tacgia");
					String img=rs.getString("anh");
					String loai=rs.getString("maloai");
					//String giaban=rs.getString("gia");
					//String soluong=rs.getString("soluong");
				//	ds.add(new sachbean("s0","Từ Ngữ Hán Việt","ha1",60000,"http://www.minhkhai.vn/hinhlon/8935087502012.jpg","Loai1"));
					sachbean sach=new sachbean(masach, tensach, tacgia,gia, img, loai);
					//Giohangbean ghb=new Giohangbean(masach, tensach, tacgia, img, Double.parseDouble(giaban), Double.parseDouble(soluong));
					lsmh.add(sach);
				}	rs.close();dc.cn.close();
			} catch (Exception e) {
				// TODO: handle exception
			}

	return lsmh;
}
}
