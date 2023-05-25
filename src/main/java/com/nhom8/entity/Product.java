package com.nhom8.entity;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Product")
@NamedQuery(name = "Product.findAll", query = "SELECT p FROM Product p")
@NamedQuery(name = "Product.findActive", query = "SELECT p FROM Product p WHERE p.status = 1 AND p.category.status = 1")
public class Product implements Serializable {

    private static final long serialVersionUID = 1L;
    
    @Id
    private int id;
    private String name;
    private int price;
    private int quantity;
    private String image;
    private String description;
    private String manufacturer;
    private int status;

    //bi-directional one-to-many association to OrderItem
    @OneToMany(fetch = FetchType.EAGER, mappedBy = "product")
    private List<OrderItem> orderitems;

    //bi-directional one-to-many association with CartItem
    @OneToMany(fetch = FetchType.EAGER, mappedBy = "product")
    private List<CartItem> cartitems;

    //bi-directional many-to-one association with Category
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "catID")
    private Category category;

    public Product() {
    }

    public Product(int id, String name, int price, int quantity, String image, String description, String manufacturer, int status, List<OrderItem> orderitems, List<CartItem> cartitems, Category category) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.quantity = quantity;
        this.image = image;
        this.description = description;
        this.manufacturer = manufacturer;
        this.orderitems = orderitems;
        this.cartitems = cartitems;
        this.category = category;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public List<OrderItem> getOrderitems() {
        return orderitems;
    }

    public void setOrderitems(List<OrderItem> orderitems) {
        this.orderitems = orderitems;
    }

    public List<CartItem> getCartitems() {
        return cartitems;
    }

    public void setCartitems(List<CartItem> cartitems) {
        this.cartitems = cartitems;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }
}
