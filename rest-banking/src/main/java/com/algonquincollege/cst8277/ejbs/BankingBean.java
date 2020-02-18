/**************************************************************G*********o****o****g**o****og**joob*********************
 * File: BankingBean.java
 * Course materials (19F) CST 8277
 * @author Mike Norman
 *
 * @date 2019 10
 */
package com.algonquincollege.cst8277.ejbs;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import com.algonquincollege.cst8277.models.PlatformRole;
import com.algonquincollege.cst8277.models.PlatformUser;
import com.algonquincollege.cst8277.models.User;

/**
 * @author 
 * Xiaoyu Wang   (040809124)
 * Yi Wu         (040854448)
 * Yueli Zhu     (040793305)
 * Jiaying Huang (040885198)
 *
 */
@Stateless
public class BankingBean {
	
	//TODO - methods to handle CRUD for Banking entities

    @PersistenceContext(unitName = "assignment4-PU")
    protected EntityManager em;
    

    /**
     * Update user password by id
     * @param id
     * @return
     */
    @Transactional
    public User updateUserPasswordById(int id, String hashedPassword) {  
    	Query query = em.createQuery("SELECT u FROM User u where u.id = " + id);
    	User user = (User) query.getSingleResult();
    	query = em.createQuery("SELECT p FROM PlatformUser p where p.bankingUser.id = " + id);
    	PlatformUser pUser = (PlatformUser) query.getSingleResult();
    	pUser.setPwHash(hashedPassword);
    	if(pUser != null) {  			
    		em.merge(pUser);
    	}    	
    	return user;
    }
    
    /**
     * Delete user by id
     * @param id
     * @return
     */
    @Transactional
    public User deleteUserById(int id) {  
    	Query query = em.createQuery("SELECT u FROM User u where u.id = " + id);
    	User user = (User) query.getSingleResult();
    	query = em.createQuery("SELECT p FROM PlatformUser p where p.bankingUser.id = " + id);
    	PlatformUser pUser = (PlatformUser) query.getSingleResult();
    	if(user != null && pUser != null ) {
        	em.remove(pUser);
        	em.remove(user);
    	}    	
    	return user;
    }
    
    /**
     * Query user by id
     * @param id
     * @return
     */
    public User getUserbyId(int id) {  	
    	return em.find(User.class, id);
    }
    
	/**
	 * Query all the users
	 * 
	 * @return
	 */
	public List<User> getAllUsers() {
		TypedQuery<User> query = em.createQuery("select x from User x", User.class);
		return query.getResultList();
	}

	/**
	 * Create a new banking user
	 * @param user
	 * @return
	 */
	@Transactional
	public User createBankingUser(User user) {
		em.persist(user);
		return user;
	}
	
	/**
	 * Create a role
	 * @param platformRole
	 * @return
	 */
	@Transactional
	public PlatformRole createPlatformRole(PlatformRole platformRole) {
		em.persist(platformRole);
		return platformRole;
	}
	
	/**
	 * Update a role
	 * 
	 * @param platformRole
	 * @return
	 */
	@Transactional
	public PlatformRole updatePlatformRole(PlatformRole platformRole) {
		return em.merge(platformRole);
	}

	/**
	 * Create a platform user
	 * @param platformUser
	 * @return
	 */
	@Transactional
	public PlatformUser createPlatformUser(PlatformUser platformUser) {
		em.persist(platformUser);
		return platformUser;
	}
    
}