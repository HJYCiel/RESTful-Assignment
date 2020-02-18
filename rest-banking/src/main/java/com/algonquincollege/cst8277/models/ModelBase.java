/**************************************************************G*********o****o****g**o****og**joob*********************
 * File: ModelBase.java
 * Course materials (19F) CST 8277
 * @author Mike Norman
 *
 * @date 2019 10
 */
package com.algonquincollege.cst8277.models;

import java.io.Serializable;
import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Transient;
import javax.persistence.Version;

/**
 * Abstract class that is base for all com.algonquincollege.cst8277.assignment4 @Entity classes
 * @author 
 * Xiaoyu Wang   (040809124)
 * Yi Wu         (040854448)
 * Yueli Zhu     (040793305)
 * Jiaying Huang (040885198)
 * @date 2019-11-30
 */
@MappedSuperclass
public abstract class ModelBase implements BankEntity, Serializable {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	protected int id;
    protected int version;

    //TODO - add createdDate, updatedDate
    protected LocalDateTime createdDate;
	protected LocalDateTime updatedDate;

    public ModelBase() {
    }
    

	@Column(name = "CREATED_DATE")
	public LocalDateTime getCreatedDate() {
		return createdDate;
	}
	
	public void setCreatedDate(LocalDateTime createdDate) {
		this.createdDate = createdDate;
	}
	
	@Column(name = "UPDATED_DATE")
	public LocalDateTime getUpdatedDate() {
		return updatedDate;
	}
	
	public void setUpdatedDate(LocalDateTime updatedDate) {
		this.updatedDate = updatedDate;
	}
    
    @Transient
    public int getId() {
        return this.id;
    }
    public void setId(int id) {
        this.id = id;
    }
    
    @Version
    public int getVersion() {
        return version;
    }
    public void setVersion(int version) {
        this.version = version;
    }
    
    @PrePersist
    public void onPersist() {
    	setCreatedDate(LocalDateTime.now());
    }
    
    @PreUpdate
    public void onUpdate() {
    	setCreatedDate(LocalDateTime.now());
    }
    
}