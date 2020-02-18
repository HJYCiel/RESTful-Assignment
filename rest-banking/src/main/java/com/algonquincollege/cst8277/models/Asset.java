/**************************************************************G*********o****o****g**o****og**joob*********************
 * File: Asset.java
 * Course materials (19F) CST 8277
 * @author Mike Norman
 *
 * @date 2019 10
 */
package com.algonquincollege.cst8277.models;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;

import com.fasterxml.jackson.annotation.JsonBackReference;

/**
 * The persistent class for the ASSET database table.
 * @author 
 * Xiaoyu Wang   (040809124)
 * Yi Wu         (040854448)
 * Yueli Zhu     (040793305)
 * Jiaying Huang (040885198)
 * @date 2019-11-30
 * 
 */
@Entity
public class Asset extends ModelBase implements Serializable {
    private static final long serialVersionUID = 1L;

    // added some more member fields: name, units, price

    protected double currentValue;
    protected String name;
    protected Portfolio owner;
    protected int units;
    protected double price;
    
    public Asset() {
        super();
    }

    @Override
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="ASSET_ID")
    public int getId() {
        return this.id;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }
    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the units
     */
    public int getUnits() {
        return units;
    }
    /**
     * @param units the units to set
     */
    public void setUnits(int units) {
        this.units = units;
    }

    /**
     * @return the price
     */
    public double getPrice() {
        return price;
    }
    /**
     * @param price the price to set
     */
    public void setPrice(double price) {
        this.price = price;
    }

    //balance and currentValue are same thing for an asset
    @Column(name="CURRENT_VALUE")
    public double getBalance() {
        return this.currentValue;
    }
    public void setBalance(double currentValue) {
        this.currentValue = currentValue;
    }
    public double currentValue() {
        return currentValue;
    }
    //make sure asset's currentValue is up-to-date in Db
    @PrePersist
    public void onPersist() {
        calculateCurrentValue();
    }
    @PreUpdate
    public void onUpdate() {
        calculateCurrentValue();
    }
    protected void calculateCurrentValue() {
        setBalance(price * units);
    }

    @JsonBackReference
    //TODO - finish the @ManyToOne mapping
    @ManyToOne
    @JoinColumn(name = "OWNER_PORTFOLIO_ID")
    public Portfolio getOwner() {
        return owner;
    }
    public void setOwner(Portfolio owner) {
        this.owner = owner;
    }

}