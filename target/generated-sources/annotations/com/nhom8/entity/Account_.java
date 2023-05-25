package com.nhom8.entity;

import com.nhom8.entity.Cart;
import com.nhom8.entity.MyOrder;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.10.v20211216-rNA", date="2023-05-23T09:14:49")
@StaticMetamodel(Account.class)
public class Account_ { 

    public static volatile SingularAttribute<Account, String> image;
    public static volatile SingularAttribute<Account, String> password;
    public static volatile SingularAttribute<Account, String> address;
    public static volatile SingularAttribute<Account, String> phone;
    public static volatile SingularAttribute<Account, String> name;
    public static volatile SingularAttribute<Account, Integer> id;
    public static volatile SingularAttribute<Account, Integer> type;
    public static volatile SingularAttribute<Account, Cart> cart;
    public static volatile SingularAttribute<Account, String> email;
    public static volatile SingularAttribute<Account, String> username;
    public static volatile SingularAttribute<Account, Integer> status;
    public static volatile ListAttribute<Account, MyOrder> order;

}