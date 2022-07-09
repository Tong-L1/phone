package dao;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.io.OutputStreamWriter;
import bean.Concretiontime;
import bean.Poorkey;
import util.Util;

public class Dao {
	
	public List<Poorkey> getTables(){
		List<Poorkey> list = new ArrayList<Poorkey>();
		Connection connection = Util.getConnection();
		PreparedStatement preparedStatement = null; 
		ResultSet rs = null;
		try {
	        String sql="select * from cptj";
	        preparedStatement = connection.prepareStatement(sql);
	        rs = preparedStatement.executeQuery();
	        while(rs.next()) {
	        	Poorkey p = new Poorkey();
	        	p.setKeywords(rs.getString("keywords"));
	        	p.setCount(rs.getInt("count"));
	            list.add(p);
	        }
	    }catch(SQLException e) {
	        e.printStackTrace();
	    }finally{
	    	Util.close(rs);
        	Util.close(preparedStatement);
        	Util.close(connection);
        }
		return list;
	}
	
	
	public List<Concretiontime> getInfo(){
		List<Concretiontime> list = new ArrayList<Concretiontime>();
		Connection connection = Util.getConnection();
		PreparedStatement preparedStatement = null; 
		ResultSet rs = null;
		try {
	        String sql="select time,count(time) from kaf group by time order by time desc limit 50";
	        preparedStatement = connection.prepareStatement(sql);
	        rs = preparedStatement.executeQuery();
	        while(rs.next()) {
	        	Concretiontime c = new Concretiontime();
	        	c.setTime(rs.getString(1));
	        	c.setNum(rs.getInt(2));
	            list.add(c);
	        }
	    }catch(SQLException e) {
	        e.printStackTrace();
	    }finally{
	    	Util.close(rs);
        	Util.close(preparedStatement);
        	Util.close(connection);
        }
		return list;
	}
	
	
	public void outputFile() {
		List<Concretiontime> list = getInfo();
		BufferedWriter out = null;     
		File file=new File("D:\\documents\\javaweb\\phone\\src\\main\\webapp\\a.json");
		try {
			//out = new BufferedWriter(new FileWriter("D:\\documents\\javaweb\\phone\\src\\main\\webapp\\a.json"));
			out = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file, false)));  
			out.write("");
			out.close();
			out = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file, true)));  
			out.write( "{\n"
            		+"\t\"data_pie\":[\n");
			
			for(int i=list.size()-1;i>=0;i--) {
				list = getInfo();
				
				
				if(i==0) {
					out.write(
		            		"\t\t{\"时间\":\""+list.get(i).getTime()+"\", \"评论数\":"+list.get(i).getNum()+"}\n"
		            		);
        		}else {
        			out.write(
		            		"\t\t{\"时间\":\""+list.get(i).getTime()+"\", \"评论数\":"+list.get(i).getNum()+"},\n"
		            		);
        		}
				
							}	
			out.write("\t]\n}\n");
			
            out.close();
        } catch (IOException e) {
        }
		
	}
	
	
	public static void main(String arg[]) {
		Dao dao = new Dao();
		List<Concretiontime> list=null;
		list = dao.getInfo();
		System.out.println("开始");
		while(true) {
			dao.outputFile();	
			
		try {
				Thread.sleep(1000);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
	
}
}
	

