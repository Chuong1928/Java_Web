package bo;

import java.util.ArrayList;

import bean.donviunghobean;

import dao.donviunghodao;


public class donviunghobo {
	donviunghodao uh=new donviunghodao();
	ArrayList<donviunghobean> ds;
	public ArrayList<donviunghobean> get_from_dao()throws Exception{
		try {
			return uh.get_from_data();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
}
