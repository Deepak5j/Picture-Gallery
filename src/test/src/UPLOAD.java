package test.src;

import java.io.File;
import java.io.IOException;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import test.curd.CrudOperation;

/**
 * Servlet implementation class UPLOAD
 */
@WebServlet("/UPLOAD")
public class UPLOAD extends HttpServlet {
	private static final long serialVersionUID = 1L;
    int r;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UPLOAD() {
        super();
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("#######################  Execution of UPLOAD startse  ################################");
				
		ServletContext scx=getServletContext();
		String path=scx.getRealPath("/");
		String newpath=path+"pics";
		File f=new File(newpath);
		if(!f.exists())
			f.mkdir();
		MultipartRequest mpt=new MultipartRequest(request,newpath,6*1024*1024,new DefaultFileRenamePolicy());
		String title=mpt.getParameter("title");
		String filename=null;
		Enumeration<?> e=mpt.getFileNames();
		File fileobj=null;
		filename=null;
		String ctrlname=null;
		if(e!=null)
		{
			while(e.hasMoreElements())
			{
				try
				{
					ctrlname=(String)e.nextElement();
					fileobj=mpt.getFile(ctrlname);
					filename=fileobj.getName();
				}
				catch(Exception ty)
				{
					response.sendRedirect("/test/jsp/access.jsp");
				}
			}	
		}
     	long tn = Calendar.getInstance().getTimeInMillis();
     	java.sql.Timestamp ts = new java.sql.Timestamp(tn);
		Connection con=null;
		PreparedStatement ps=null;
		con=CrudOperation.createConnection();
		try
		{
			String str="insert into files(title,name,date) values(?,?,?)";
			ps=con.prepareStatement(str);
			ps.setString(1, title);
			ps.setString(2, filename);
			ps.setTimestamp(3, ts);
			int rw=ps.executeUpdate();
			if(rw>0)
			{
				response.sendRedirect("/test/jsp/access.jsp");
			}
		}
		catch(SQLException s)
		{
			try
			{
				if(con!=null)
					con.close();
				if(ps!=null)
					ps.close();	
			}
			catch(SQLException se)
			{
				se.printStackTrace();
			}
		}
		System.out.println("#######################  Execution ENDS  ################################");
	}
}