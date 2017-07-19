package service;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


import beans.AnswerSheet;
import beans.Manager;
import beans.answerTimes;
import jdbc.jdbcConn;

public class service {
	private PreparedStatement ps;
	private ResultSet rs;
	private String sql;
	private List list;
	private Connection dbconnection;
	private answerTimes aS;
	int [][]Array=new int[24][8];
	
	public int addAnswerSheet(AnswerSheet answerSheet){
		int i = 0;
		dbconnection = jdbcConn.getConnection();
		try {
			
		
			sql="insert into result values(null,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			ps = dbconnection.prepareStatement(sql);
			ps.setString(1,answerSheet.getAnswer1() );
			ps.setString(2,answerSheet.getAnswer2() );
			ps.setString(3,answerSheet.getAnswer3() );
			ps.setString(4,answerSheet.getAnswer4() );
			ps.setString(5,answerSheet.getAnswer5() );
			ps.setString(6,answerSheet.getAnswer6() );
			ps.setString(7,answerSheet.getAnswer7() );
			ps.setString(8,answerSheet.getAnswer8() );
			ps.setString(9,answerSheet.getAnswer9() );
			ps.setString(10,answerSheet.getAnswer10() );
			ps.setString(11,answerSheet.getAnswer11() );
			ps.setString(12,answerSheet.getAnswer12() );
			ps.setString(13,answerSheet.getAnswer13() );
			ps.setString(14,answerSheet.getAnswer14() );
			ps.setString(15,answerSheet.getAnswer15() );
			ps.setString(16,answerSheet.getAnswer16() );
			ps.setString(17,answerSheet.getAnswer17() );
			ps.setString(18,answerSheet.getAnswer18() );
			ps.setString(19,answerSheet.getAnswer19() );
			ps.setString(20,answerSheet.getAnswer20() );
			ps.setString(21,answerSheet.getAnswer21() );
			ps.setString(22,answerSheet.getAnswer22() );
			ps.setString(23,answerSheet.getAnswer23() );
			ps.setString(24,answerSheet.getAnswer24() );
			ps.setString(25,answerSheet.getAnswer25() );
			i=ps.executeUpdate();
					

		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			free();
		}
		return i;
	}
	
	public int addManager(Manager manager) throws SQLException{
		

		int i= queryManager(manager);
		if (i==0){
		dbconnection = jdbcConn.getConnection();
		try {
			sql="insert into administrators values(null,?,?,null,null,null,null,null)";		
			ps = dbconnection.prepareStatement(sql);
			ps.setString(1,manager.getMname() );
			ps.setString(2,manager.getMpwd() );			
			i=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
				free();
		}
		}else{
			return i;
		}
		return i;
	}
	
	//尝试从服务器接受一个乱码的数据。好像失败了
	//计算数据
	/*public int[][] getTimes() throws SQLException{
		dbconnection = jdbcConn.getConnection();
		sql="select * from result";
		ps = dbconnection.prepareStatement(sql);
		rs=ps.executeQuery();
		
		while(rs.next()){
			switch(rs.getString("Question1")){
			case "a":	Array[0][0]++;
			break;
			case "b":	Array[0][1]++;
			break;
			case "c":	Array[0][2]++;
			break;
			case "d":	Array[0][3]++;
			break;
			case "e":	Array[0][4]++;
			break;
			}
			switch(rs.getString("Question2")){
			case "a":	Array[1][0]++;break;
			case "b":	Array[1][1]++;break;
			case "c":	Array[1][2]++;break;
			case "d":	Array[1][3]++;
			break;
			}
			switch(rs.getString("Question3")){
			case "a":	Array[2][0]++;break;
			case "b":	Array[2][1]++;		
			break;
			}
			switch(rs.getString("Question4")){
			case "a":	Array[3][0]++;break;
			case "b":	Array[3][1]++;break;
			case "c":	Array[3][2]++;break;
			case "d":	Array[3][3]++;break;
			case "e":	Array[3][4]++;	
			break;
			}
			switch(rs.getString("Question5")){
			case "a":	Array[4][0]++;break;
			case "b":	Array[4][1]++;break;
			case "c":	Array[4][2]++;break;
			case "d":	Array[4][3]++;break;
			case "e":	Array[4][4]++;		break;
			case "f":	Array[4][5]++;	break;
			case "g":	Array[4][6]++;		break;	
			case "h":	Array[4][7]++;	
			break;
			}
			switch(rs.getString("Question6")){
			case "a":	Array[5][0]++;break;
			case "b":	Array[5][1]++;break;
			case "c":	Array[5][2]++;break;
			case "d":	Array[5][3]++;	
			break;
			}
			switch(rs.getString("Question7")){
			case "a":	Array[6][0]++;break;
			case "b":	Array[6][1]++;break;
			case "c":	Array[6][2]++;break;
			case "d":	Array[6][3]++;		
			break;
			}
			switch(rs.getString("Question8")){
			case "a":	Array[7][0]++;break;
			case "b":	Array[7][1]++;break;
			case "c":	Array[7][2]++;break;
			case "d":	Array[7][3]++;		
			break;
			}
			switch(rs.getString("Question9")){
			case "a":	Array[8][0]++;break;
			case "b":	Array[8][1]++;break;
			case "c":	Array[8][2]++;break;
			case "d":	Array[8][3]++;		
			break;
			}
			switch(rs.getString("Question10")){
			case "a":	Array[9][0]++;break;
			case "b":	Array[9][1]++;break;
			case "c":	Array[9][2]++;break;
			case "d":	Array[9][3]++;break;
			case "e":	Array[9][4]++;			
			break;
			}
			switch(rs.getString("Question11")){
			case "a":	Array[10][0]++;break;
			case "b":	Array[10][1]++;break;
			case "c":	Array[10][2]++;break;
			case "d":	Array[10][3]++;break;
			case "e":	Array[10][4]++;			
			break;
			}
			switch(rs.getString("Question12")){
			case "a":	Array[11][0]++;break;
			case "b":	Array[11][1]++;		
			break;
			}
			switch(rs.getString("Question13")){
			case "a":	Array[12][0]++;break;
			case "b":	Array[12][1]++;	
			break;
			}
			switch(rs.getString("Question14")){
			case "a":	Array[13][0]++;break;
			case "b":	Array[13][1]++;	
			break;
			}
			switch(rs.getString("Question15")){
			case "a":	Array[14][0]++;break;
			case "b":	Array[14][1]++;	
			break;
			}
			switch(rs.getString("Question16")){
			case "a":	Array[15][0]++;break;
			case "b":	Array[15][1]++;break;
			case "c":	Array[15][2]++;break;
			case "d":	Array[15][3]++;	
			break;
			}
			switch(rs.getString("Question17")){
			case "a":	Array[16][0]++;break;
			case "b":	Array[16][1]++;break;
			case "c":	Array[16][2]++;	
			break;
			}
			switch(rs.getString("Question18")){
			case "a":	Array[17][0]++;break;
			case "b":	Array[17][1]++;		
			break;
			}
			switch(rs.getString("Question19")){
			case "a":	Array[18][0]++;break;
			case "b":	Array[18][1]++;break;
			case "c":	Array[18][2]++;break;
			case "d":	Array[18][3]++;
			break;
			}
			switch(rs.getString("Question20")){
			case "a":	Array[19][0]++;break;
			case "b":	Array[19][1]++;	
			break;
			}
			switch(rs.getString("Question21")){
			case "a":	Array[20][0]++;break;
			case "b":	Array[20][1]++;	
			break;
			}
			switch(rs.getString("Question22")){
			case "a":	Array[21][0]++;break;
			case "b":	Array[21][1]++;break;
			case "c":	Array[21][2]++;break;
			case "d":	Array[21][3]++;	
			break;
			}
			switch(rs.getString("Question23")){
			case "a":	Array[22][0]++;break;
			case "b":	Array[22][1]++;	
			break;
			}
			switch(rs.getString("Question24")){
			case "a":	Array[23][0]++;break;
			case "b":	Array[23][1]++;		
			break;
			}
			
		}
		free();

		return Array;
	}
	*/
	
	public int queryManager(Manager manager) throws SQLException{
		
		dbconnection = jdbcConn.getConnection();
		String name=manager.getMname();
		String password=manager.getMpwd();
		sql="select administrators.ID from administrators where administrators.Administratorsname=? and administrators.Password=?";
		ps = dbconnection.prepareStatement(sql);
		ps.setString(1,name);
		ps.setString(2,password);
		
		 rs=ps.executeQuery();
		 if(rs.next()){
				free();
			 return 1;
		 }else{
				free();
			 return 0;
		 }
		
	}
	
	public int queryUserByName(String Mname)throws SQLException{
		dbconnection = jdbcConn.getConnection();
		sql="select administrators.ID from administrators where administratorsname=?";
		ps = dbconnection.prepareStatement(sql);
		ps.setString(1,Mname);
		rs=ps.executeQuery();
		 if(rs.next()){
				free();
			 return 1;
		 }else{
				free();
			 return 0;
		 }
		
	}
	
 public void free()
	 {
		try {
			 if (rs!=null) 
				rs.close();
			 if (ps!=null) 
					ps.close();
			 if (dbconnection!=null) 
				 dbconnection.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	 }

}

