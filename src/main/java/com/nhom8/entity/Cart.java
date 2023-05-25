package com.nhom8.entity;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
//@Table(name = "Cart")
@NamedQuery(name = "Cart.findAll", query = "SELECT c FROM Cart c")
public class Cart implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    //bi-directional one-to-one association with Account
    @OneToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "cusid")
    private Account account;

    //bi-directional one-to-many association with Cart
    @OneToMany(fetch = FetchType.EAGER, mappedBy="cart")
    private List<CartItem> cartitems;

    public Cart() {
    }

    public Cart(int id, Account account, List<CartItem> cartitems) {
        this.id = id;
        this.account = account;
        this.cartitems = cartitems;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public List<CartItem> getCartitems() {
        return cartitems;
    }

    public void setCartitems(List<CartItem> cartitems) {
        this.cartitems = cartitems;
    }   

}
