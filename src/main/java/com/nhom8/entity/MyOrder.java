package com.nhom8.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
//@Table(name = "MyOrder")
@NamedQuery(name = "MyOrder.findAll", query = "SELECT o FROM MyOrder o ORDER BY o.dateOrder DESC")
public class MyOrder implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Temporal(TemporalType.DATE)
    private Date dateOrder;

    private double total;
    private String name;
    private String email;
    private String phone;
    private String address;

    //bi-directional many-to-one association with Account
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "cusid")
    private Account account;

    //bi-directional one-to-many association with OrderItem
    @OneToMany(fetch = FetchType.EAGER, mappedBy = "order")
    private List<OrderItem> orderitems;

    public MyOrder() {
    }

    public MyOrder(int id, Date dateOrder, double total, String name, String email, String phone, String address, Account account, List<OrderItem> orderitems) {
        this.id = id;
        this.dateOrder = dateOrder;
        this.total = total;
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.account = account;
        this.orderitems = orderitems;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDateOrder() {
        return dateOrder;
    }

    public void setDateOrder(Date dateOrder) {
        this.dateOrder = dateOrder;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public List<OrderItem> getOrderitems() {
        return orderitems;
    }

    public void setOrderitems(List<OrderItem> orderitems) {
        this.orderitems = orderitems;
    }

}
