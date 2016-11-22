package com.domain.project.assemblers;

import java.sql.SQLException;
import java.util.List;

import com.domain.project.accessObjects.PersonDAO;
import com.domain.project.exceptions.DAOException;
import com.domain.project.valueObjects.PersonDTO;

/**
 * @author Steven Peeters
 * 		   Adobe Certified Instructor
 * 		   steven@flexpert.be
 *
 * This class contains the services for retrieving, creating and
 * updating the people from the database. The assumption is that 
 * a MySQL database is used with a JDBC connection.
 */
public class PersonAssembler {
	/**
	 * @return List	The list of books specifically for this user
	 * 
	 * This method retrieves all the persons in the database.
	 */
	public List<PersonDTO> getAllPersons() throws SQLException {
		PersonDAO dao = new PersonDAO();	
		return dao.getAllPersons();
	}
	

	/**
	 * @param personDTO
	 * @return PersonDTO
	 * 
	 * This method is actually going to call the database action in the DAO
	 */
	public PersonDTO createPerson(PersonDTO person) throws DAOException {
		PersonDAO dao = new PersonDAO();
		return dao.create(person);
	}

	/**
	 * @param personDTO
	 * @return void
	 * 
	 * This method is actually going to call the database action in the DAO
	 */
	public void updatePerson(PersonDTO person) throws DAOException {
		PersonDAO dao = new PersonDAO();
		dao.update(person);
	}

	/**
	 * @param personDTO
	 * @return void
	 * 
	 * This method is actually going to call the database action in the DAO
	 */
	public void deletePerson(PersonDTO person) throws DAOException {
		PersonDAO dao = new PersonDAO();
		dao.delete(person);
	}

}
