/**************************************************************G*********o****o****g**o****og**joob*********************
 * File: Portfolio.java
 * Course materials (19F) CST 8277
 * @author Mike Norman
 *
 * @date 2019 10
 */
package com.algonquincollege.cst8277.models;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonManagedReference;

/**
 * The persistent class for the PORTFOLIO database table.
 * @author 
 * Xiaoyu Wang   (040809124)
 * Yi Wu         (040854448)
 * Yueli Zhu     (040793305)
 * Jiaying Huang (040885198)
 * @date 2019-11-30
 * 
 */
@Entity
//@NamedQuery(name="Portfolio.findAll", query="SELECT p FROM Portfolio p")
public class Portfolio extends ModelBase implements Serializable {
    private static final long serialVersionUID = 1L;

    protected double currentValue;
    protected List<Asset> assets = new ArrayList<Asset>();
    
    public Portfolio() {
    }

    //balance and currentValue are same thing for a portfolio
    public double currentValue() {
        return currentValue;
    }
    public double getBalance() {
        return currentValue;
    }
    public void setBalance(double currentValue) {
        this.currentValue = currentValue;
    }

    @Override
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "PORTFOLIO_ID")
    public int getId() {
        return this.id;
    }
    
	//TODO - finish the @OneToMany mapping
    @JsonManagedReference
    @OneToMany(mappedBy = "owner", cascade = CascadeType.ALL, orphanRemoval = true)
    public List<Asset> getAssets() {
        return assets;
    }
    public void setAssets(List<Asset> assets) {
        this.assets = assets;
    }
    public void addAsset(Asset asset) {
        getAssets().add(asset);
    }

}