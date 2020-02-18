/**************************************************************G*********o****o****g**o****og**joob*********************
 * File: InvestmentAccount.java
 * Course materials (19F) CST 8277
 * @author Mike Norman
 *
 * @date 2019 10
 */
package com.algonquincollege.cst8277.models;

import java.io.Serializable;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;


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
@DiscriminatorValue(value = "I")
public class InvestmentAccount extends AccountBase implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private Portfolio portfolio;

	public InvestmentAccount() {
	}

	//uni-directional one-to-one association to Portfolio
	//TODO - finish the @OneToOne mapping
	@OneToOne
	@JoinColumn(name = "PORTFOLIO_ID")
	public Portfolio getPortfolio() {
		return this.portfolio;
	}

	public void setPortfolio(Portfolio portfolio) {
		this.portfolio = portfolio;
	}

}