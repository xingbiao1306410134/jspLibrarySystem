package org.book;
import java.sql.SQLException;

public class User
{
	private String id;
	private String name;
	private String passwd;
	private String idCard;
	private String email;
	private String phone;
	public String getId()
	{
		return id;
	}
	public void setId(String id)
	{
		this.id = id;
	}
	public String getName()
	{
		return name;
	}
	public void setName(String name)
	{
		this.name = name;
	}
	public String getPasswd()
	{
		return passwd;
	}
	public void setPasswd(String passwd)
	{
		this.passwd = passwd;
	}
	public String getIdCard()
	{
		return idCard;
	}
	public void setIdCard(String idCard)
	{
		this.idCard = idCard;
	}
	public String getEmail()
	{
		return email;
	}
	public void setEmail(String email)
	{
		this.email = email;
	}
	public String getPhone()
	{
		return phone;
	}
	public void setPhone(String phone)
	{
		this.phone = phone;
	}
	public boolean confirm()
	{
		String str = "select * from user where name = \"" + this.name + "\" and passwd = \"" + this.passwd + "\"";
		//debug
		System.out.println(str);
		
		MysqlConn conn = new MysqlConn(str,0);
		try
		{
			if(!conn.getRs().next())
			{
				conn.destroy();
				return false;
			}
			else
			{
				id = conn.getRs().getString("id");
				idCard = conn.getRs().getString("idCard");
				email = conn.getRs().getString("email");
				phone = conn.getRs().getString("phone");
				conn.destroy();
				return true;
			}
		}
		catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
			conn.destroy();
			return false;
		}
	}
	
	
	public boolean register()
	{
		String strConfirm = "select * from user where name = \"" + this.name + "\"";
		String strReg = "insert into user(name,passwd,idCard,email,phone) ";
		strReg += "values(\"";
		strReg += this.name + "\", \"";
		strReg += this.passwd + "\", \"";
		strReg += this.idCard + "\", \"";
		strReg += this.email + "\", \"";
		strReg += this.phone + "\")";
		
		//debug
		System.out.println(strConfirm);
		System.out.println(strReg);
				
		
		MysqlConn conn1 = new MysqlConn(strConfirm,0);
		MysqlConn conn2;
		try
		{
			if(!conn1.getRs().next())
			{
				conn2 = new MysqlConn(strReg,1);
				conn2.destroy();
				conn1.destroy();
				return true;
			}
			else
			{
				conn1.destroy();
				return false;
			}
		}
		catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
			conn1.destroy();
			return false;
		}
	}
}
