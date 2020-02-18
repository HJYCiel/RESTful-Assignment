/**************************************************************G*********o****o****g**o****og**joob*********************
 * File: PlatformRole.java
 * Course materials (19F) CST 8277
 * @author Mike Norman
 *
 * @date 2019 10
 */
package com.algonquincollege.cst8277.models;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

/**
 * Role class used for (JSR-375) Java EE Security authorization/authentication
 * @author 
 * Xiaoyu Wang   (040809124)
 * Yi Wu         (040854448)
 * Yueli Zhu     (040793305)
 * Jiaying Huang (040885198)
 * @date 2019-11-30
 */

@Entity
@Table(name="PLATFORM_ROLE")
public class PlatformRole extends ModelBase implements Serializable {
    /** explicit set serialVersionUID */
    private static final long serialVersionUID = 1L;

    protected String roleName;
    protected List<PlatformUser> platformUsers = new ArrayList<PlatformUser>();

    public PlatformRole() {
        super();
    }
    public PlatformRole(String roleName) {
    	super();
    	this.roleName = roleName;
    }

    @Override
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public String getRoleName() {
        return roleName;
    }
    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    @ManyToMany(mappedBy="platformRoles")
    public List<PlatformUser> getPlatformUsers() {
        return platformUsers;
    }
    public void setPlatformUsers(List<PlatformUser> platformUsers) {
        this.platformUsers = platformUsers;
    }
    public void addPlatformUser(PlatformUser user) {
        getPlatformUsers().add(user);
    }

}