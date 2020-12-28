package org.o7planning.hellospringmvc.bo;

import java.util.ArrayList;

import org.o7planning.hellospringmvc.bean.loaibean;
public class loaibo {


	public ArrayList<loaibean> getLoai() {

		ArrayList<loaibean> ds = new ArrayList<loaibean>();

		ds.add(new loaibean("tin", "Tin Hoc"));

		ds.add(new loaibean("toan", "Toan"));

		ds.add(new loaibean("ly", "Vat Ly"));

		ds.add(new loaibean("hoa", "Hoa Hoc"));

		return ds;

	}
}
