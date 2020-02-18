package com.algonquincollege.cst8277.rest;

import static com.algonquincollege.cst8277.util.MyConstants.ADMIN_ROLE;
import static com.algonquincollege.cst8277.util.MyConstants.DEFAULT_KEY_SIZE;
import static com.algonquincollege.cst8277.util.MyConstants.DEFAULT_PROPERTY_ALGORITHM;
import static com.algonquincollege.cst8277.util.MyConstants.DEFAULT_PROPERTY_ITERATIONS;
import static com.algonquincollege.cst8277.util.MyConstants.DEFAULT_SALT_SIZE;
import static com.algonquincollege.cst8277.util.MyConstants.PROPERTY_ALGORITHM;
import static com.algonquincollege.cst8277.util.MyConstants.PROPERTY_ITERATIONS;
import static com.algonquincollege.cst8277.util.MyConstants.PROPERTY_KEYSIZE;
import static com.algonquincollege.cst8277.util.MyConstants.PROPERTY_SALTSIZE;
import static com.algonquincollege.cst8277.util.MyConstants.USER_ROLE;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.security.RolesAllowed;
import javax.ejb.EJB;
import javax.inject.Inject;
import javax.security.enterprise.SecurityContext;
import javax.security.enterprise.identitystore.Pbkdf2PasswordHash;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.glassfish.soteria.WrappingCallerPrincipal;

import com.algonquincollege.cst8277.ejbs.BankingBean;
import com.algonquincollege.cst8277.models.PlatformRole;
import com.algonquincollege.cst8277.models.PlatformUser;
import com.algonquincollege.cst8277.models.User;
import com.algonquincollege.cst8277.security.CustomIdentityStoreJPAHelper;


/**
 * User resource to handle banking user REST CRUD
 * @author 
 * Xiaoyu Wang   (040809124)
 * Yi Wu         (040854448)
 * Yueli Zhu     (040793305)
 * Jiaying Huang (040885198)
 * @date 2019-11-30
 */

@Path("user")
public class UserResource {

    @EJB
    protected BankingBean bankingBean;
    
    @Inject
    protected SecurityContext sc;
    
    @Inject
    protected CustomIdentityStoreJPAHelper jpaHelper;
    
    @Inject
    protected Pbkdf2PasswordHash pbAndjPasswordHash;

    /**
     * Create user with USER_ROLE
     * @param username
     * @return
     */
    @RolesAllowed({ADMIN_ROLE}) // can't let just ANYONE create a new bank account/user
    @POST
    @Path("{name}")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public Response newBankingUser(@PathParam("name") String username) {
        // build default admin user (if needed)
        PlatformUser defaultAdminUser = jpaHelper.findUserByName(username);
        if (defaultAdminUser == null) {
        	// default is non-admin-role
        	// password is the user name
        	User newUser = bankingBean.createBankingUser(new User(username));  
        	PlatformRole role = new PlatformRole(USER_ROLE);
        	role = bankingBean.createPlatformRole(role);
        	PlatformUser platformUser = new PlatformUser(username, newUser);
        	platformUser.addPlatformRole(role);
        	Map<String, String> pbAndjProperties = new HashMap<>();
            pbAndjProperties.put(PROPERTY_ALGORITHM, DEFAULT_PROPERTY_ALGORITHM);
            pbAndjProperties.put(PROPERTY_ITERATIONS, DEFAULT_PROPERTY_ITERATIONS);
            pbAndjProperties.put(PROPERTY_SALTSIZE, DEFAULT_SALT_SIZE);
            pbAndjProperties.put(PROPERTY_KEYSIZE, DEFAULT_KEY_SIZE);
            pbAndjPasswordHash.initialize(pbAndjProperties);
            String pwHash = pbAndjPasswordHash.generate(username.toCharArray());
        	platformUser.setPwHash(pwHash);
            role.addPlatformUser(bankingBean.createPlatformUser(platformUser));
            
            return Response.ok(newUser).build();
        } else {
			return Response.status(Response.Status.BAD_REQUEST.getStatusCode(), "User already exists").build();
		}  
        
    }
    
    /**
     * Create user with USER_ROLE or ADMIN_ROLE
     * @param username
     * @param roleName
     * @return
     */
    @RolesAllowed({ADMIN_ROLE}) // can't let just ANYONE create a new bank account/user
    @POST
    @Path("{name}/{role}")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public Response newBankingUser(@PathParam("name") String username, @PathParam("role") String roleName) {
    	// role name must be USER_ROLE or ADMIN_ROLE
    	// password is the user name
    	 PlatformUser defaultAdminUser = jpaHelper.findUserByName(username);
         if (defaultAdminUser != null) {
        	 return Response.status(Response.Status.BAD_REQUEST.getStatusCode(), "User already exists").build(); 
         }
    	 if (ADMIN_ROLE.equalsIgnoreCase(roleName) || USER_ROLE.equalsIgnoreCase(roleName)) {
    		User newUser = bankingBean.createBankingUser(new User(username));      	       	
        	
        	PlatformUser platformUser = new PlatformUser(username, newUser);
        	Map<String, String> pbAndjProperties = new HashMap<>();
            pbAndjProperties.put(PROPERTY_ALGORITHM, DEFAULT_PROPERTY_ALGORITHM);
            pbAndjProperties.put(PROPERTY_ITERATIONS, DEFAULT_PROPERTY_ITERATIONS);
            pbAndjProperties.put(PROPERTY_SALTSIZE, DEFAULT_SALT_SIZE);
            pbAndjProperties.put(PROPERTY_KEYSIZE, DEFAULT_KEY_SIZE);
            pbAndjPasswordHash.initialize(pbAndjProperties);
            String pwHash = pbAndjPasswordHash.generate(username.toCharArray());
        	platformUser.setPwHash(pwHash);
        	
        	PlatformRole role = new PlatformRole(roleName.toUpperCase());  
        	role = bankingBean.createPlatformRole(role);
        	platformUser.addPlatformRole(role);
        	role.addPlatformUser(bankingBean.createPlatformUser(platformUser));
        	
        	bankingBean.updatePlatformRole(role);
        	
        	return Response.ok(newUser).build();
		} else {
			return Response.status(Response.Status.BAD_REQUEST.getStatusCode(), "Role name is incorrect").build();
		}   	
    }
    
    /**
     * Update user password by id
     * @param username
     * @param roleName
     * @return
     */    
    @RolesAllowed({ADMIN_ROLE, USER_ROLE})
    @PUT
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    @Path("{id}/{password}")
    public Response updateUserPasswordById(@PathParam("id") int id, @PathParam("password") String password) {
    	Response response = null;
    	Map<String, String> pbAndjProperties = new HashMap<>();
        pbAndjProperties.put(PROPERTY_ALGORITHM, DEFAULT_PROPERTY_ALGORITHM);
        pbAndjProperties.put(PROPERTY_ITERATIONS, DEFAULT_PROPERTY_ITERATIONS);
        pbAndjProperties.put(PROPERTY_SALTSIZE, DEFAULT_SALT_SIZE);
        pbAndjProperties.put(PROPERTY_KEYSIZE, DEFAULT_KEY_SIZE);
        pbAndjPasswordHash.initialize(pbAndjProperties);
        String pwHash = pbAndjPasswordHash.generate(password.toCharArray());
    	if (sc.isCallerInRole(ADMIN_ROLE)) {    		
    		User bankingUser = bankingBean.updateUserPasswordById(id, pwHash);
    		if (bankingUser == null) {
    			response = Response.noContent().build();
    		}
    		else {
    			response = Response.ok(bankingUser).build();
    		}
    	}
    	else {
    		WrappingCallerPrincipal wcp = (WrappingCallerPrincipal)sc.getCallerPrincipal();
    		PlatformUser platformUser = (PlatformUser)wcp.getWrapped();
    		User bankingUser = platformUser.getBankingUser();
    		if (bankingUser == null || id != bankingUser.getId()) {
    			response = Response.noContent().build();
    		}
    		else {
    			bankingUser = bankingBean.updateUserPasswordById(id, pwHash);
    			response = Response.ok(bankingUser).build();
    		}
    	}
    	return response;
    }
    
    /**
     * DELETE user by id
     * @param username
     * @param roleName
     * @return
     */    
    @RolesAllowed({ADMIN_ROLE})
    @DELETE
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    @Path("{id}")
    public Response deleteUserById(@PathParam("id") int id) {
    	Response response = null;
    	if (sc.isCallerInRole(ADMIN_ROLE)) {
    		User bankingUser = bankingBean.deleteUserById(id);
    		if (bankingUser == null) {
    			response = Response.noContent().build();
    		}
    		else {
    			response = Response.ok(bankingUser).build();
    		}
    	}   	
    	return response;
    }
    

    /**
     * GET user by id
     * @param username
     * @param roleName
     * @return
     */    
    @RolesAllowed({ADMIN_ROLE, USER_ROLE})
    @GET
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    @Path("{id}")
    public Response getUserById(@PathParam("id") int id) {
    	Response response = null;
    	if (sc.isCallerInRole(ADMIN_ROLE)) {
    		User bankingUser = bankingBean.getUserbyId(id);
    		if (bankingUser == null) {
    			response = Response.noContent().build();
    		}
    		else {
    			response = Response.ok(bankingUser).build();
    		}
    	}
    	else {
    		WrappingCallerPrincipal wcp = (WrappingCallerPrincipal)sc.getCallerPrincipal();
    		PlatformUser platformUser = (PlatformUser)wcp.getWrapped();
    		User bankingUser = platformUser.getBankingUser();
    		if (bankingUser == null || id != bankingUser.getId()) {
    			response = Response.noContent().build();
    		}
    		else {
    			response = Response.ok(bankingUser).build();
    		}
    	}
    	return response;
    }
    
    /**
     * GET user list, available to all
     * @param username
     * @param roleName
     * @return
     */    
    @RolesAllowed({ADMIN_ROLE, USER_ROLE})
    @GET
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public Response getAllUsers() {
        Response response = null;
        if (sc.isCallerInRole(ADMIN_ROLE)) {
            List<User> users = bankingBean.getAllUsers();
            response = Response.ok(users).build();
        }
        else {
        	WrappingCallerPrincipal wcp = (WrappingCallerPrincipal)sc.getCallerPrincipal();
            PlatformUser platformUser = (PlatformUser)wcp.getWrapped();
            User bankingUser = platformUser.getBankingUser();
            if (bankingUser == null) {
                response = Response.noContent().build();
            }
            else {
                response = Response.ok(bankingUser).build();
            }
        }
        return response;
    }
}