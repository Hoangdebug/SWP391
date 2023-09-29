package fa.task4.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import fa.task4.model.Seat;
import fa.task4.model.Ticket;

public class SeatDao {

	public static List<Seat> findSeatByDateTrip(int idBus,String date){
		 
		List<Seat> list = new ArrayList<>();
		ResultSet rs = null;
		PreparedStatement preparedStatement  = null;
		Connection connection = JDBCConnection.getJDBCConnection();
		
		String sql = " SELECT s.idSeat,s.Seatname FROM seat as s,ticket as ti where ti.idBus=? and ti.date=? and s.idSeat=ti.idSeat and ti.status='1'";
		try {
			 preparedStatement = connection.prepareStatement(sql);
			 preparedStatement.setInt(1, idBus);
			 preparedStatement.setString(2, date); 
			 rs = preparedStatement.executeQuery();
			 
			 if (rs.first()) {
				 rs.beforeFirst();
				 while (rs.next()) {
					 Seat stSeat= new Seat(rs.getString("idSeat"),rs.getString("seatName"));
					 System.out.println(stSeat);
					 list.add(stSeat);
					 }
				 return list;
			 }
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return list;
	}

}
