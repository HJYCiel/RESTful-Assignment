package com.algonquincollege.cst8277.models;

/**
 * The interface class of bank account.
 * Information of balance is included in the interface.
 * @author 
 * Xiaoyu Wang   (040809124)
 * Yi Wu         (040854448)
 * Yueli Zhu     (040793305)
 * Jiaying Huang (040885198)
 * @date 2019-11-30
 * 
 */

public interface BankAccount extends BankEntity {

    public double getBalance();
    public void setBalance(double balance);
    
}