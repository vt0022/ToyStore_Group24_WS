package com.nhom8.entity;

import com.nhom8.entity.Account;
import com.nhom8.entity.OrderItem;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.10.v20211216-rNA", date="2023-05-23T09:14:49")
@StaticMetamodel(MyOrder.class)
public class MyOrder_ { 

    public static volatile ListAttribute<MyOrder, OrderItem> orderitems;
    public static volatile SingularAttribute<MyOrder, Double> total;
    public static volatile SingularAttribute<MyOrder, String> address;
    public static volatile SingularAttribute<MyOrder, String> phone;
    public static volatile SingularAttribute<MyOrder, Date> dateOrder;
    public static volatile SingularAttribute<MyOrder, String> name;
    public static volatile SingularAttribute<MyOrder, Integer> id;
    public static volatile SingularAttribute<MyOrder, String> email;
    public static volatile SingularAttribute<MyOrder, Account> account;

}