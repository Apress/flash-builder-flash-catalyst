package com.domain.project.accessObjects;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.domain.project.exceptions.DAOException;
import com.domain.project.exceptions.ValidationException;
import com.domain.project.helpers.ConnectionHelper;
import com.domain.project.valueObjects.PersonDTO;

public class PersonDAO {
	/**
	 * @return List<PersonDTO> A list of retrieved people from the database.
	 * 
	 * This method connects to the database and retrieves all the available records.
	 */
	public List<PersonDTO> getAllPersons() throws DAOException {
		System.out.println("executing PersonDAO.getAllPersons");
		
		List<PersonDTO> list = new ArrayList<PersonDTO>();
		Connection c = null;
		
		String sql = "SELECT * FROM person";	
		
		try
		{
			c = ConnectionHelper.getConnection();
			Statement s = c.createStatement();
			
			ResultSet rs = s.executeQuery(sql);
			PersonDTO person;
			while (rs.next())
			{
				person = new PersonDTO();
				person.setId(rs.getInt("id"));
				person.setFirstname(rs.getString("firstname"));
				person.setLastname(rs.getString("lastname"));
				person.setPhone(rs.getString("phone"));
				person.setEmail(rs.getString("email"));
				list.add(person);
			}
		}
		catch (SQLException e)
		{
			e.printStackTrace();
			throw new DAOException(e);
		}
		finally
		{
			ConnectionHelper.closeConnection(c);
		}

		return list;
	}
		
	/**
	 * @param person
	 * @return
	 * @throws DAOException
	 * 
	 * Create a new person in the database, based upon the given information.
	 * Also make sure the mandatory fields are filled out.
	 */
	public PersonDTO create(PersonDTO person) throws DAOException
	{
		validate(person);
		
		System.out.println("executing PersonDAO.create: " + person.getFirstname() + person.getLastname());
		
		Connection c = null;
		try
		{
			c = ConnectionHelper.getConnection();
			PreparedStatement ps = c.prepareStatement(
				"INSERT INTO person " +
				"(firstname, lastname, phone, email) " +
				"VALUES (?, ?, ?, ?)");
			ps.setString(1, person.getFirstname());
			ps.setString(2, person.getLastname());
			ps.setString(3, person.getPhone());
			ps.setString(4, person.getEmail());
			ps.execute();
			Statement s = c.createStatement();
			// HSQLDB Syntax to get the identity (sandwichId) of inserted row
			ResultSet rs = s.executeQuery("SELECT LAST_INSERT_ID()");
			rs.next();
			person.setId(rs.getInt(1));
		}
		catch (SQLException e)
		{
			e.printStackTrace();
			throw new DAOException(e.getMessage());
		}
		finally
		{
			ConnectionHelper.closeConnection(c);
		}
		return person;
	}

	/**
	 * @param newVersion
	 * @param previousVersion
	 * @throws DAOException
	 * @throws ConcurrencyException
	 * 
	 * Update the provided person with the new information, but first be sure
	 * the new information is correct by validating the mandatory fields.
	 */
	public void update(PersonDTO newVersion) throws DAOException
	{
		System.out.println("executing PersonDAO.update: " + newVersion.getFirstname() + " " + newVersion.getLastname());
		
		validate(newVersion);
		
		Connection c = null;
		try
		{
			c = ConnectionHelper.getConnection();
            PreparedStatement ps = c.prepareStatement("UPDATE person SET firstname=?, lastname=?, phone=?, email=? " +
            		"WHERE id=?");
            ps.setString(1, newVersion.getFirstname());
            ps.setString(2, newVersion.getLastname());
            ps.setString(3, newVersion.getPhone());
            ps.setString(4, newVersion.getEmail());
            ps.setInt(5, newVersion.getId());
			if (ps.executeUpdate() == 0)
			{
				throw new DAOException("Item not found");
			}
		}
		catch (SQLException e)
		{
			e.printStackTrace();
			throw new DAOException(e.getMessage());
		}
		finally
		{
			ConnectionHelper.closeConnection(c);
		}
		
	}

	/**
	 * @param person
	 * @throws DAOException
	 * @throws ConcurrencyException
	 * 
	 * Delete the provided person from the database
	 */
	public void delete(PersonDTO person) throws DAOException
	{
		System.out.println("executing PersonDAO.delete: "+ person.getFirstname() + " " + person.getLastname());

		Connection c = null;
		try
		{
			c = ConnectionHelper.getConnection();
			PreparedStatement ps = c.prepareStatement("DELETE FROM person WHERE id=?");
			ps.setInt(1, person.getId());
			if (ps.executeUpdate() == 0)
			{
				throw new DAOException("Item not found");
			}
		}
		catch (SQLException e)
		{
			e.printStackTrace();
			throw new DAOException(e.getMessage());
		}
		finally
		{
			ConnectionHelper.closeConnection(c);
		}
		
	}

	/**
	 * @param person
	 * 
	 * Validate the mandatory fields firstname and lastname
	 */
	private void validate(PersonDTO person) {
		if (person.getFirstname() == null ||
			person.getFirstname().length() == 0) {
			System.err.println("Validation error on first name");
			throw new ValidationException("Person's first name can't be blank");
		}
		if (person.getLastname() == null ||
				person.getLastname().length() == 0) {
				System.err.println("Validation error on last name");
				throw new ValidationException("Person's last name can't be blank");
			}
	}
}
