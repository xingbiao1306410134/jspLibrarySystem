package org.book;

public class Book
{
	private String isbn;
	private String name;
	private String publicer;
	private String author;
	private String price;
	private String amount;
	private String lefts;
	private String publicTime;
	public String getIsbn()
	{
		return isbn;
	}
	public void setIsbn(String isbn)
	{
		this.isbn = isbn;
	}
	public String getName()
	{
		return name;
	}
	public void setName(String name)
	{
		this.name = name;
	}
	public String getPublicer()
	{
		return publicer;
	}
	public void setPublicer(String publicer)
	{
		this.publicer = publicer;
	}
	public String getAuthor()
	{
		return author;
	}
	public void setAuthor(String author)
	{
		this.author = author;
	}
	public String getPrice()
	{
		return price;
	}
	public void setPrice(String price)
	{
		this.price = price;
	}
	public String getAmount()
	{
		return amount;
	}
	public void setAmount(String amount)
	{
		this.amount = amount;
	}
	public String getLefts()
	{
		return lefts;
	}
	public void setLefts(String lefts)
	{
		this.lefts = lefts;
	}
	public String getPublicTime()
	{
		return publicTime;
	}
	public void setPublicTime(String publicTime)
	{
		this.publicTime = publicTime;
	}
	public boolean insert()
	{

		String str = "insert into books(isbn,name,public,author,publicTime,price,amount,lefts)";
		str += "values(\"";
		str += this.isbn + "\", \"";
		str += this.name + "\", \"";
		str += this.publicer + "\", \"";
		str += this.author + "\", \"";
		str += this.publicTime + "\", ";
		str += this.price + ", ";
		str += this.amount + ", ";
		str += this.amount + ")";
		
		
		//debug
		System.out.println(str);
		MysqlConn conn1 = new MysqlConn(str,1);
		conn1.destroy();
		if(!conn1.getBs()) return false;
		return true;
	}

}
