package org.book;
import java.sql.*;


public class MysqlConn
{
	private static boolean isInit = false;
	private static String url = new String("jdbc:mysql://localhost/book");
	private static String user = new String("root");
	private static String passwd = new String("root");
	private static Connection con;
	
	
	private Statement s;
	private ResultSet rs;
	private Boolean bs = false;
	public Boolean getBs()
	{
		return bs;
	}

	private String command;
	private boolean isclosed = true;
	
	public static void main(String[] args)
	{
		// TODO Auto-generated method stub
		
	}
	
	public MysqlConn(String command, int method)
	{
		this.command = command;
		if(!isInit)
		{
			isclosed = false;
			init();
		}
		try
		{
			if(method == 0)
			{
				s = con.createStatement();
				rs = s.executeQuery(this.command);
			}
			if(method == 1)
			{
				s = con.createStatement();
				s.executeUpdate(command);
				bs = true;
			}
			
		}
		catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void destroy()
	{
		try
		{
			if(!isclosed) this.s.close();
		}
		catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static void init()
	{
		if(isInit)
		{
			return;
		}
		isInit = true;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, user, passwd);
		}
		catch (ClassNotFoundException | SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static boolean isInit()
	{
		return isInit;
	}

	public static void setInit(boolean isInit)
	{
		MysqlConn.isInit = isInit;
	}

	public static String getUrl()
	{
		return url;
	}

	public static void setUrl(String url)
	{
		MysqlConn.url = url;
	}

	public static String getUser()
	{
		return user;
	}

	public static void setUser(String user)
	{
		MysqlConn.user = user;
	}

	public static String getPasswd()
	{
		return passwd;
	}

	public static void setPasswd(String passwd)
	{
		MysqlConn.passwd = passwd;
	}

	public ResultSet getRs()
	{
		return rs;
	}

	public void setRs(ResultSet rs)
	{
		this.rs = rs;
	}

	public String getCommand()
	{
		return command;
	}

	public void setCommand(String command)
	{
		this.command = command;
	}

	public static void close()
	{
		try
		{
			isInit = false;
			con.close();
		}
		catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
