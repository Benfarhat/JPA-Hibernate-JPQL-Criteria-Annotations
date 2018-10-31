package org.benfarhat.hibernate;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import javax.transaction.Transactional;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.benfarhat.hibernate.model.User;

/**
 * Hello world!
 *
 */
public class App 
{

    // Logger
    private static final Logger logger = LogManager.getLogger(User.class);
    public static void main( String[] args )
    {	
    	demo();
    }
    @Transactional
    private static void demo() {
    	 // Entity Manager
    	 EntityManagerFactory factory = Persistence.createEntityManagerFactory("UsersDB");
         EntityManager em = factory.createEntityManager();
         
         // Transaction ->
         em.getTransaction().begin();
         
 		User newUser = new User();
 		newUser.setEmail("JohnDoe@gmail.com");
 		newUser.setFullname("John Doe");
 		newUser.setPassword("Secret");
 		    
 		em.persist(newUser);
 		    
 		em.getTransaction().commit(); 
 		logger.info(newUser + " added");
 		// Transaction ->
         em.getTransaction().begin();
         
         User existingUser = new User();
         existingUser.setId(1);
         existingUser.setEmail("Jane.Doe.gmail.com");
         existingUser.setFullname("Jane Doe");
         existingUser.setPassword("NotSoSecret");
          
         em.merge(existingUser);
 		    
 		em.getTransaction().commit();
 		
 		// Transaction ->
         em.getTransaction().begin();
         
         User findingUser = em.find(User.class, 2);
         findingUser.setPassword("NoOneCanGuessIt");
          
         em.merge(findingUser);
 		    
 		em.getTransaction().commit();
 		// Query ->  
 		System.out.println("Regular JPQL Query with pagination");
 		int page = 1, nbElement = 5;
 		String sql = "SELECT u from User u";
 		Query q = em.createQuery(sql)
 				.setFirstResult(nbElement * page - nbElement)
 				.setMaxResults(nbElement);
 		List<User> users = q.getResultList();
 		
 		for(User user : users) {
 			System.out.println(user);
 		}
 		
 		em.clear();
 		
 		// NamedQuery ->   
 		System.out.println("Named Query");
 		sql = "SELECT u from User u";
 		q = em.createNamedQuery("findAllUsers");
 		users = q.getResultList();
 		
 		for(User user : users) {
 			System.out.println(user);
 		}
 		
 		em.clear();
 		// Transaction ->
         //em.getTransaction().begin();
 		User reference = em.getReference(User.class, 2);
 		em.remove(reference);
 		//em.getTransaction().commit();
 		System.out.println("\n----------------------");
 		System.out.println(reference);
 		System.out.println("\n----------------------");
 		sql = null;
 		q = null;
 		users = null;
 		

 		System.out.println("Select Query with Criteria API");
 		CriteriaBuilder cb = em.getCriteriaBuilder();
 		CriteriaQuery<User> cq = cb.createQuery(User.class);
 		Root<User> rootPerson = cq.from(User.class);
 		CriteriaQuery<User> all = cq.select(rootPerson);
 		TypedQuery<User> allQuery = em.createQuery(all);
 		users = allQuery.getResultList();
 		
 		for(User user : users) {
 			System.out.println(user);
 		}
 		
 		em.close();
 		factory.close(); 
    }
}
