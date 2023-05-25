package com.nhom8.entity;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Category")
@NamedQuery(name = "Category.findAll", query = "SELECT c FROM Category c")
@NamedQuery(name = "Category.findActive", query = "SELECT c FROM Category c WHERE c.status = 1")
public class Category implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    private int id;

    private String name;

    private int status;

    //bi-directional one-to-many association with Product
    @OneToMany(mappedBy = "category")
    private List<Product> products;

    public Category() {
    }

    public Category(int id, String name, int status, List<Product> products) {
        this.id = id;
        this.name = name;
        this.status = status;
        this.products = products;
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

    public int getStatus(){
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public List<Product> getProducts() {
        return this.products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }
}
