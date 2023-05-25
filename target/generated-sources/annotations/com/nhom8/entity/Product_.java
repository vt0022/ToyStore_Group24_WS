package com.nhom8.entity;

import com.nhom8.entity.CartItem;
import com.nhom8.entity.Category;
import com.nhom8.entity.OrderItem;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.10.v20211216-rNA", date="2023-05-23T09:14:49")
@StaticMetamodel(Product.class)
public class Product_ { 

    public static volatile ListAttribute<Product, OrderItem> orderitems;
    public static volatile SingularAttribute<Product, String> image;
    public static volatile SingularAttribute<Product, Integer> quantity;
    public static volatile SingularAttribute<Product, Integer> price;
    public static volatile SingularAttribute<Product, String> name;
    public static volatile SingularAttribute<Product, String> description;
    public static volatile SingularAttribute<Product, Integer> id;
    public static volatile SingularAttribute<Product, Category> category;
    public static volatile SingularAttribute<Product, String> manufacturer;
    public static volatile SingularAttribute<Product, Integer> status;
    public static volatile ListAttribute<Product, CartItem> cartitems;

}