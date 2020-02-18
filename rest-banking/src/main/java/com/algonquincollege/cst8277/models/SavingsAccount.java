/**************************************************************G*********o****o****g**o****og**joob*********************
 * File: SavingsAccount.java
 * Course materials (19F) CST 8277
 * @author Mike Norman
 *
 * @date 2019 10
 */
package com.algonquincollege.cst8277.models;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;


/**
 * The persistent class for the ACCOUNT database table.
 * @author 
 * Xiaoyu Wang   (040809124)
 * Yi Wu         (040854448)
 * Yueli Zhu     (040793305)
 * Jiaying Huang (040885198)
 * @date 2019-11-30
 * 
 */
@Entity
@DiscriminatorValue(value = "S")
public class SavingsAccount extends AccountBase implements Serializable {
	private static final long serialVersionUID = 1L;
	
	public SavingsAccount() {
        super();
    }
	
	private double savingRate;

	@Column(name = "RATE")
    public double getSavingRate() {
        return savingRate;
    }
    public void setSavingRate(double savingRate) {
        this.savingRate = savingRate;
    }
	
}