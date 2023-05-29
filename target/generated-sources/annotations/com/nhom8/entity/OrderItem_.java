package com.nhom8.entity;

import com.nhom8.entity.MyOrder;
import com.nhom8.entity.Product;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.10.v20211216-rNA", date="2023-05-29T10:07:11")
@StaticMetamodel(OrderItem.class)
public class OrderItem_ { 

    public static volatile SingularAttribute<OrderItem, Integer> amount;
    public static volatile SingularAttribute<OrderItem, Product> product;
    public static volatile SingularAttribute<OrderItem, Integer> price;
    public static volatile SingularAttribute<OrderItem, Integer> id;
    public static volatile SingularAttribute<OrderItem, MyOrder> order;

}