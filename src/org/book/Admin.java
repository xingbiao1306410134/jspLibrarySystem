package org.book;

import java.sql.SQLException;

public class Admin
{
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
	public Admin()
	{
		// TODO Auto-generated constructor stub
	}
	public String getIdCard()
	{
		return idCard;
	}
	public void setIdCard(String idCard)
	{
		this.idCard = idCard;
	}
	private String id;
	private String name;
	private String passwd;
	private String idCard;
	public boolean confirm()
	{
		String str = "select * from admin where name = \"" + this.name + "\" and passwd = \"" + this.passwd + "\"";
		
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
}