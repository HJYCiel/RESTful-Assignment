/**************************************************************G*********o****o****g**o****og**joob*********************
 * File: RestClientTestSuite.java
 * Course materials (19F) CST 8277
 * @author Yi Wu, Xiaoyu Wang
 *
 * @date 2019-12-01
 */
package com.algonquincollege.cst8277.rest;

import static com.algonquincollege.cst8277.util.MyConstants.APPLICATION_API_VERSION;
import static com.algonquincollege.cst8277.util.MyConstants.APPLICATION_NAME;
import static javax.ws.rs.core.MediaType.APPLICATION_JSON;
import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertThat;

import java.net.URI;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.UriBuilder;

import org.glassfish.jersey.client.authentication.HttpAuthenticationFeature;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runners.MethodSorters;


/**
 * JUnit test User resource to handle banking user REST CRUD
 * 
 * NOTE: Run this JUnit after the postman test
 * 
 * @author 
 * Xiaoyu Wang   (040809124)
 * Yi Wu         (040854448)
 * Yueli Zhu     (040793305)
 * Jiaying Huang (040885198)
 * @date 2019-11-30
 */
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class RestClientTestSuite  {

    // TODO - create 10 test-cases that send GET/PUT/POST/DELETE messages
    // to REST'ful endpoints for the Banking entities using the JAX-RS
    // ClientBuilder APIs
    
    /**
     * Default admin/admin should work
     */
    @Test
    public void test01_testBasicAuth() {
        HttpAuthenticationFeature feature = 
            HttpAuthenticationFeature.basic("admin", "admin");
        Client client = ClientBuilder.newClient();
        URI uri = UriBuilder
            .fromUri(APPLICATION_NAME + APPLICATION_API_VERSION)
            .scheme("http")
            .host("localhost")
            .port(8090)
            .build();
        WebTarget webTarget = client
            .register(feature)
            .target(uri)
            .path("user");
        Response response = webTarget
            .request(APPLICATION_JSON)
            .get();
        assertThat(response.getStatus(), is(200));
    }
    
    /**
     * Default admin but wrong password should not authenticate
     */
    @Test
    public void test02_testBasicAuthAdminWrongPassowrd() {
    	HttpAuthenticationFeature feature = 
                HttpAuthenticationFeature.basic("admin", "password");
            Client client = ClientBuilder.newClient();
            URI uri = UriBuilder
                .fromUri(APPLICATION_NAME + APPLICATION_API_VERSION)
                .scheme("http")
                .host("localhost")
                .port(8090)
                .build();
            WebTarget webTarget = client
                .register(feature)
                .target(uri)
                .path("user");
            Response response = webTarget
                .request(APPLICATION_JSON)
                .get();
            assertThat(response.getStatus(), is(401));
    }
    
    /**
     * User creation (user3, id =3)
     */
    @Test
    public void test03_testCreateUser3() {
        HttpAuthenticationFeature feature = 
                HttpAuthenticationFeature.basic("admin", "admin");
        Client client = ClientBuilder.newClient();
        URI uri = UriBuilder
                .fromUri(APPLICATION_NAME + APPLICATION_API_VERSION)
                .scheme("http")
                .host("localhost")
                .port(8090)
                .build();
        WebTarget webTarget = client
                .register(feature)
                .target(uri)
                .path("user/user3");
        Response response = webTarget
                .request(APPLICATION_JSON)
                .post(null);
        assertThat(response.getStatus(), is(200));
    }
    
    /**
     * User creation by user1 will be rejected, not admin
     */
    @Test
    public void test04_testCreateUser4Byuser3() {
        HttpAuthenticationFeature feature = 
                HttpAuthenticationFeature.basic("user3", "user3");
        Client client = ClientBuilder.newClient();
        URI uri = UriBuilder
                .fromUri(APPLICATION_NAME + APPLICATION_API_VERSION)
                .scheme("http")
                .host("localhost")
                .port(8090)
                .build();
        WebTarget webTarget = client
                .register(feature)
                .target(uri)
                .path("user/user4");
        Response response = webTarget
                .request(APPLICATION_JSON)
                .post(null);
        assertThat(response.getStatus(), is(403));
    }
    
    /**
     * User creation (user4, id =4)
     */
    @Test
    public void test05_testCreateUser4() {
        HttpAuthenticationFeature feature = 
                HttpAuthenticationFeature.basic("admin", "admin");
        Client client = ClientBuilder.newClient();
        URI uri = UriBuilder
                .fromUri(APPLICATION_NAME + APPLICATION_API_VERSION)
                .scheme("http")
                .host("localhost")
                .port(8090)
                .build();   
        WebTarget webTarget = client
                .register(feature)
                .target(uri)
                .path("user/user4");
        Response response = webTarget
                .request(APPLICATION_JSON)
                .post(null);
        assertThat(response.getStatus(), is(200));
    }
    
    /**
     * Query user by user3
     */
    @Test
    public void test06_testGetUserByuser3() {
        HttpAuthenticationFeature feature = 
                HttpAuthenticationFeature.basic("user3", "user3");
        Client client = ClientBuilder.newClient();
        URI uri = UriBuilder
                .fromUri(APPLICATION_NAME + APPLICATION_API_VERSION)
                .scheme("http")
                .host("localhost")
                .port(8090)
                .build();
        WebTarget webTarget = client
                .register(feature)
                .target(uri)
                .path("user");
        Response response = webTarget
                .request(APPLICATION_JSON)
                .get();
        assertThat(response.getStatus(), is(200));
    }

    
    /**
     * Query user by user4
     */
    @Test
    public void test07_testGetUserByuser4() {
        HttpAuthenticationFeature feature = 
                HttpAuthenticationFeature.basic("user4", "user4");
        Client client = ClientBuilder.newClient();
        URI uri = UriBuilder
                .fromUri(APPLICATION_NAME + APPLICATION_API_VERSION)
                .scheme("http")
                .host("localhost")
                .port(8090)
                .build();
        WebTarget webTarget = client
                .register(feature)
                .target(uri)
                .path("user");
        Response response = webTarget
                .request(APPLICATION_JSON)
                .get();
        assertThat(response.getStatus(), is(200));
    }
    
    /**
     * REST get user by id
     * 
     * /banking/api/v1/user/4
     * 
     * (user4, id=4)
     */
    @Test
    public void test08_testGetUserById() {
        HttpAuthenticationFeature feature = 
                HttpAuthenticationFeature.basic("admin", "admin");
        Client client = ClientBuilder.newClient();
        URI uri = UriBuilder.fromUri(APPLICATION_NAME + APPLICATION_API_VERSION).scheme("http").host("localhost")
                .port(8090).build();
        WebTarget webTarget = client
                .register(feature)
                .target(uri)
                .path("user/4");
        Response response = webTarget
                .request(APPLICATION_JSON)
                .get();
        assertThat(response.getStatus(), is(200));
    }
    
    /**
     * Delete user (user3, id=3)
     */
    @Test
    public void test09_testDeleteUser4() {
        HttpAuthenticationFeature feature = 
                HttpAuthenticationFeature.basic("admin", "admin");
        Client client = ClientBuilder.newClient();
        URI uri = UriBuilder.fromUri(APPLICATION_NAME + APPLICATION_API_VERSION).scheme("http").host("localhost")
                .port(8090).build();
        WebTarget webTarget = client
                .register(feature)
                .target(uri)
                .path("user/3");
        Response response = webTarget
                .request(APPLICATION_JSON)
                .delete();
        assertThat(response.getStatus(), is(200));
    }
    
    /**
     * Delete user (user4, id=4)
     */
    @Test
    public void test10_testDeleteUser4() {
        HttpAuthenticationFeature feature = 
                HttpAuthenticationFeature.basic("admin", "admin");
        Client client = ClientBuilder.newClient();
        URI uri = UriBuilder.fromUri(APPLICATION_NAME + APPLICATION_API_VERSION).scheme("http").host("localhost")
                .port(8090).build();
        WebTarget webTarget = client
                .register(feature)
                .target(uri)
                .path("user/4");
        Response response = webTarget
                .request(APPLICATION_JSON)
                .delete();
        assertThat(response.getStatus(), is(200));
    }
    
    /**
     * User1 has been deleted. Should fail
     */
    @Test
    public void test11_testGetUserByuser3() {
        HttpAuthenticationFeature feature = 
                HttpAuthenticationFeature.basic("user3", "user3");
        Client client = ClientBuilder.newClient();
        URI uri = UriBuilder.fromUri(APPLICATION_NAME + APPLICATION_API_VERSION).scheme("http").host("localhost")
                .port(8090).build();
        WebTarget webTarget = client
                .register(feature)
                .target(uri)
                .path("user");
        Response response = webTarget
                .request(APPLICATION_JSON)
                .get();
        assertThat(response.getStatus(), is(401));
    }
}