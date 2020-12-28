package org.o7planning.hellospringmvc.bo;

import java.util.ArrayList;
import org.o7planning.hellospringmvc.bean.sachbean;
public class sachbo {
	
	public ArrayList<sachbean> getsach() {
		ArrayList<sachbean> ds = new ArrayList<sachbean>();
		ds.add(new sachbean("s1", "csdl1", (long) 1000, (long) 123, "vendor/image/anh1.jpg", "tin"));
		ds.add(new sachbean("s2", "csdl2", (long) 1000, (long) 123, "vendor/image/anh2.jpg", "tin"));
		ds.add(new sachbean("s3", "csdl3", (long) 1000, (long) 123, "vendor/image/anh3.jpg", "tin"));
		ds.add(new sachbean("s4", "csdl4", (long) 1000, (long) 123, "vendor/image/anh4.jpg", "toan"));
		ds.add(new sachbean("s5", "csdl5", (long) 1000, (long) 123, "vendor/image/anh5.jpg", "toan"));
		ds.add(new sachbean("s6", "csdl6", (long) 1000, (long) 123, "vendor/image/anh6.jpg", "ly"));
		ds.add(new sachbean("s7", "csdl7", (long) 1000, (long) 123, "vendor/image/anh7.jpg", "ly"));
		ds.add(new sachbean("s8", "csdl8", (long) 1000, (long) 123, "vendor/image/anh8.jpg", "tin"));
		return ds;
	}
	public ArrayList<sachbean> getsachtheoloai(String ma) {
		ArrayList<sachbean> tam = new ArrayList<sachbean>();
		ArrayList<sachbean> ds = getsach();
		for(sachbean s:ds)
			if(s.getMaloai().toLowerCase().equals(ma.toLowerCase()))
				tam.add(s);
		return tam;
	}
	public ArrayList<sachbean> getsachtk(String ten) {
		ArrayList<sachbean> tam = new ArrayList<sachbean>();
		ArrayList<sachbean> ds = getsach();
		for(sachbean s:ds)
			if(s.getTensach().toLowerCase().contains(ten.toLowerCase()))
				tam.add(s);
		return tam;
	}
}
