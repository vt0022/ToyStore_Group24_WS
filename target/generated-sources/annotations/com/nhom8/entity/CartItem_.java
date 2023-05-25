package com.nhom8.entity;

import com.nhom8.entity.Cart;
import com.nhom8.entity.Product;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.10.v20211216-rNA", date="2023-05-23T09:14:49")
@StaticMetamodel(CartItem.class)
public class CartItem_ { 

    public static volatile SingularAttribute<CartItem, Product> product;
    public static volatile SingularAttribute<CartItem, Integer> quantity;
    public static volatile SingularAttribute<CartItem, Integer> id;
    public static volatile SingularAttribute<CartItem, Cart> cart;

}