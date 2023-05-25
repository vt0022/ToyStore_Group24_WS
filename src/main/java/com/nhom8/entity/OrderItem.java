package com.nhom8.entity;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
//@Table(name = "OrderItem")
@NamedQuery(name = "OrderItem.findAll", query = "SELECT oi FROM OrderItem oi")
public class OrderItem implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private int amount;

    private int price;

    //bi-directional many-to-one association with Product
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "productid")
    private Product product;

    //bi-directional many-to-one association with MyOrder
    @ManyToOne
    @JoinColumn(name = "orderid")
    private MyOrder order;

    public OrderItem() {
    }

    public OrderItem(int id, int amount, int price, Product product, MyOrder order) {
        this.id = id;
        this.amount = amount;
        this.price = price;
        this.product = product;
        this.order = order;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public MyOrder getOrder() {
        return order;
    }

    public void setOrder(MyOrder order) {
        this.order = order;
    }

}
