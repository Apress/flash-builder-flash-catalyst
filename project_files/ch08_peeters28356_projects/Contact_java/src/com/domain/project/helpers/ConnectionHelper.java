package com.domain.project.helpers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * @author Steven Peeters
 * 		   Adobe Certified Instructor
 * 		   steven@multimediacollege.be
 *
 * This class provides the database connectivity.
 */
public class ConnectionHelper
{

	private String url;
	private String username;
	private String password;

	private static ConnectionHelper instance;

	/**
	 * The constructor
	 */
	private ConnectionHelper()
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			// Create MYSQL JDBC URL 
			//url = "jdbc:mysql://192.168.1.246:3306/cpp";
			url = "jdbc:mysql://localhost:3306/flex4";
			username = "root";
			password = "";
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}

	/**
	 * @return
	 * 
	 * This method retrieves the one and only instance
	 * of this class.
	 */
	public static ConnectionHelper getInstance()
	{
		if (instance == null)
			instance = new ConnectionHelper();
		return instance;
	}

	/**
	 * @return java.sql.Connecion
	 * @throws java.sql.SQLException
	 * 
	 * This method will establish a connection to the given database and
	 * throws and SQLException in case something went wrong.
	 */
	public static Connection getConnection() throws java.sql.SQLException
	{
		//System.out.println("SQL CONNECTION STRING:"+getInstance().getUrl());
		return DriverManager.getConnection(getInstance().getUrl(), 
										   getInstance().username, 
										   getInstance().password);
	}

	/**
	 * @param c	The connection to close
	 * 
	 * This method closes the provided database connection
	 */
	public static void closeConnection(Connection c)
	{
		try
		{
			if (c != null)
			{
			    c.close();
            }
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
	}

	/**
	 * @return String	The JDBC driver url
	 * 
	 * This method returns the JDBC driver string to be used
	 * when connecting to the database.
	 */
	public String getUrl()
	{
		return url;
	}

	/**
	 * @return String	The username
	 * 
	 * This method returns the username to be used when
	 * connection to the database.
	 */
	public String getUsername()
	{
		return username;
	}

	/**
	 * @return String	The password
	 * 
	 * This method returns the password to be used when 
	 * connecting to the database.
	 */
	public String getPassword()
	{
		return password;
	}
}
