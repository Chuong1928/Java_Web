package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.Sinhvienbean;

public class SinhVienDAO {
	DungChung dc=new DungChung();
	public ArrayList<Sinhvienbean> get_from_data()throws Exception{
		ArrayList<Sinhvienbean> ds=new ArrayList<Sinhvienbean>();
		dc.KetNoi();
		String sql="select * from Student";
		PreparedStatement cmd=dc.cn.prepareStatement(sql);
		ResultSet rs=cmd.executeQuery();
		while(rs.next()) {
			String ID=rs.getString("ID");
			String FirstName=rs.getString("FirstName");
			String LastName=rs.getString("LastName");
			String DOB=rs.getString("DateOfBirth");
			String POB=rs.getString("PlaceOfBirth");
			String Gender=rs.getString("Gender");
			String img="https://scontent-hkg4-2.xx.fbcdn.net/v/t1.0-1/p160x160/117179292_2767398363479506_6780756058796454011_n.jpg?_nc_cat=109&ccb=2&_nc_sid=dbb9e7&_nc_ohc=GyYHMSWtvUIAX-zmbb_&_nc_ht=scontent-hkg4-2.xx&tp=6&oh=e6e17b234c8bfbec3665fe4e08790288&oe=5FEC3352";
			Sinhvienbean sv=new Sinhvienbean(ID, FirstName, LastName, DOB, POB, Gender, img);
			ds.add(sv);
		}rs.close();dc.cn.close();
		return ds;
	}
		
}
