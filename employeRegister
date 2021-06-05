package EmpAPI;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import EmpDAO.EmployeDao;


/**
 * Servlet implementation class employeRegister
 */
public class employeRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	EmployeDao employeDao =new EmployeDao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public employeRegister() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		 
		String insertout=employeDao.insert( request.getParameter("id"),
		    request.getParameter("firstname"),
		    request.getParameter("lastname"),
		    request.getParameter("employmentid"),
		    request.getParameter("startdate"),
		    request.getParameter("designation"),
		    request.getParameter("department"),
		    request.getParameter("enddate"),
		    request.getParameter("status"),
		    request.getParameter("dob"),
		    request.getParameter("reportingmanager"),
		    request.getParameter("gender"),
		    request.getParameter("bloodgroup"),
		    request.getParameter("address")
		 
		   );

        
        if(insertout!=null)
        {
        RequestDispatcher dispatcher = request.getRequestDispatcher("list.jsp");
        dispatcher.forward( request, response);
        }else
        {
        	response.getWriter().write(insertout);
        }
        
        
        
    	String updateout=employeDao.update( request.getParameter("id"),
    		    request.getParameter("firstname"),
    		    request.getParameter("lastname"),
    		    request.getParameter("employmentid"),
    		    request.getParameter("startdate"),
    		    request.getParameter("designation"),
    		    request.getParameter("department"),
    		    request.getParameter("enddate"),
    		    request.getParameter("status"),
    		    request.getParameter("dob"),
    		    request.getParameter("reportingmanager"),
    		    request.getParameter("gender"),
    		    request.getParameter("bloodgroup"),
    		    request.getParameter("address")
    		 
    		   );
    	 if(updateout!=null)
         {
         RequestDispatcher dispatcher = request.getRequestDispatcher("list.jsp");
         dispatcher.forward( request, response);
         }else
         {
         	response.getWriter().write(updateout);
         }
	}

}
