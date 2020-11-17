package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.Giohangbean;
import bean.loaibean;
import bean.sachbean;

public class sachdao {
	DungChung dc = new DungChung();

	public ArrayList<sachbean> getsach() throws Exception {
		ArrayList<sachbean> ds = new ArrayList<sachbean>();
//	  ds.add(new sachbean("s0","Từ Ngữ Hán Việt","ha1",60000,
//		  "http://www.minhkhai.vn/hinhlon/8935087502012.jpg","Loai1"));
	  /*ds.add(new
		 * sachbean("s1","Tây Du Kí","ha1",60000,
		 * "http://www.minhkhai.vn/hinhlon/5135272775327.JPG","Loai1")); ds.add(new
		 * sachbean("s2","Ông già và biển cả","ha1",60000,
		 * "http://www.minhkhai.vn/hinhlon/8935095630134.jpg","Loai1")); ds.add(new
		 * sachbean("s3","Nhật kí trong tù","ha1",60000,
		 * "http://www.minhkhai.vn/hinhlon/8935244843620.jpg","Loai1")); ds.add(new
		 * sachbean("s4","Dế Mèn Phiêu Lưu Ký","ha1",30000,
		 * "http://www.minhkhai.vn/hinhlon/8935244848502.jpg","Loai1")); ds.add(new
		 * sachbean("s5","Truyện kể khi ngủ","ha1",10000,
		 * "http://www.minhkhai.vn/hinhlon/8935236420556.jpg","Loai2")); ds.add(new
		 * sachbean("s6","Học thuyết chính trị","ha1",10000,
		 * "http://www.minhkhai.vn/hinhlon/9786043003741.jpg","Loai2")); ds.add(new
		 * sachbean("s7","Số phận tâm linh","ha1",10000,
		 * "http://www.minhkhai.vn/hinhlon/8935087501992.JPG","Loai2")); ds.add(new
		 * sachbean("s8","haha","ha1",40000,
		 * "http://www.minhkhai.vn/hinhlon/8935278602927.jpg","Loai2")); ds.add(new
		 * sachbean("s9","Lập Trình C","ha1",20000,
		 * "http://www.minhkhai.vn/hinhlon/8935087501985.jpg","Loai3")); ds.add(new
		 * sachbean("s10","Photoshop","ha1",500000,
		 * "http://www.minhkhai.vn/hinhlon/9786049979415.jpg","Loai3")); ds.add(new
		 * sachbean("s11","Xử lý ảnh","ha1",500000,
		 * "http://www.minhkhai.vn/hinhlon/9786049946820.jpg","Loai3")); ds.add(new
		 * sachbean("s12","Kiểm thử phần mềm","ha1",500000,
		 * "http://www.minhkhai.vn/hinhlon/9786049845581.jpg","Loai3"));
		 */
		dc.KetNoi();
		String sql="select * from sach";
		PreparedStatement cmd=dc.cn.prepareStatement(sql);
		ResultSet rs=cmd.executeQuery();
		while(rs.next()) {
			String masach=rs.getString("masach");
			String tensach=rs.getString("tensach");
			int gia=rs.getInt("gia");
			String tacgia=rs.getString("tacgia");
			String img=rs.getString("anh");
			String loai=rs.getString("maloai");
		//	ds.add(new sachbean("s0","Từ Ngữ Hán Việt","ha1",60000,"http://www.minhkhai.vn/hinhlon/8935087502012.jpg","Loai1"));
			sachbean sach=new sachbean(masach, tensach, tacgia,gia, img, loai);
			ds.add(sach);
		}rs.close();dc.cn.close();
		return ds;
	}
}