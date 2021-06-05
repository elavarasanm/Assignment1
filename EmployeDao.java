package EmpDAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;

public class EmployeDao {

	 public String insert(String id, String firstname, String lastname, String employmentid, String startdate,
				String designation, String department, String enddate, String status, String dob, String reportingmanager,
				String gender, String bloodgroup, String address) {
	        String output = "";
	        try {

	            Class.forName("com.mysql.jdbc.Driver");
	            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/elavarasan","root","elavarasan97@");
	            if (con == null) {
	                return "Error while connecting to the database for inserting appoinment details.";
	            }

	            String sql=	"insert into employe(ID, FirstName, LastName, EmploymentID, StartDate, Designation, Department, Enddate, Status, DOB, ReportingManager, Gender, Bloodgroup, Address) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	            PreparedStatement stmt = con.prepareStatement(sql);

	            stmt.setString(1,id);
	            stmt.setString(2,firstname);
	            stmt.setString(3,lastname);
	            stmt.setString(4,employmentid);
	            stmt.setString(5,startdate);
	            stmt.setString(6,designation);
	            stmt.setString(7,department);
	            stmt.setString(8,enddate);
	             stmt.setString(9,status);
	             stmt.setString(10,dob);
	             stmt.setString(11,reportingmanager);
	             stmt.setString(12,gender);
	             stmt.setString(13,bloodgroup);
	             stmt.setString(14,address);
	            stmt.execute();

	            output = "Inserted successfully";
	            
	        } catch (Exception e) {
	            output = "Error while inserting.";
	            System.err.println(e.getMessage());
	        }
	        return output;
	    }
	 public String update(String id, String firstname, String lastname, String employmentid, String startdate,
				String designation, String department, String enddate, String status, String dob, String reportingmanager,
				String gender, String bloodgroup, String address) {
	        String output = "";
	        try {

	            Class.forName("com.mysql.jdbc.Driver");
	            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/elavarasan","root","elavarasan97@");
	            if (con == null) {
	                return "Error while connecting to the database for inserting appoinment details.";
	            }

	            String sql=	"Update employe set id=?,firstname=?, lastname=?,employmentid=?,startdate=?,designation=?,department=?,enddate=?,status=?,dob=?,reportingmanager=?,gender=?,bloodgroup=?,address=? where id="+id;
	            PreparedStatement stmt = con.prepareStatement(sql);

	            stmt.setString(1,id);
	            stmt.setString(2,firstname);
	            stmt.setString(3,lastname);
	            stmt.setString(4,employmentid);
	            stmt.setString(5,startdate);
	            stmt.setString(6,designation);
	            stmt.setString(7,department);
	            stmt.setString(8,enddate);
	             stmt.setString(9,status);
	             stmt.setString(10,dob);
	             stmt.setString(11,reportingmanager);
	             stmt.setString(12,gender);
	             stmt.setString(13,bloodgroup);
	             stmt.setString(14,address);
	            stmt.execute();

	            output = "Updated successfully";

	        } catch (Exception e) {
	            output = "Error";
	            System.err.println(e.getMessage());
	        }
	        return output;
	    }


}
