package org.book;

public class Loan
{
	private String id;
	private String userId;
	private String bookIsbn;
	private String time;
	private String revert;
	public String getId()
	{
		return id;
	}
	public void setId(String id)
	{
		this.id = id;
	}
	public String getUserId()
	{
		return userId;
	}
	public void setUserId(String userId)
	{
		this.userId = userId;
	}
	public String getBookIsbn()
	{
		return bookIsbn;
	}
	public void setBookIsbn(String bookIsbn)
	{
		this.bookIsbn = bookIsbn;
	}
	public String getTime()
	{
		return time;
	}
	public void setTime(String time)
	{
		this.time = time;
	}
	public String getRevert()
	{
		return revert;
	}
	public void setRevert(String revert)
	{
		this.revert = revert;
	}
	public String getRenew()
	{
		return renew;
	}
	public void setRenew(String renew)
	{
		this.renew = renew;
	}
	private String renew;
}
