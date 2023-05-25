package com.nhom8.dao;

import com.nhom8.entity.MyOrder;
import java.util.List;

public interface OrderDAO {

    void delete(int orderid);

    List<MyOrder> getAllOrders();

    List<MyOrder> getOrdersByCusID(int cid);

    void insert(MyOrder o);

    void update(MyOrder o);
    
}
