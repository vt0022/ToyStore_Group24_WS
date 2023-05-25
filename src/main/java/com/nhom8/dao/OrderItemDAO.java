package com.nhom8.dao;

import com.nhom8.entity.OrderItem;
import java.util.List;

public interface OrderItemDAO {

    void delete(int oiid);

    List<OrderItem> getAllOrderItems();

    OrderItem getOrderItemByID(int oiid);

    List<OrderItem> getOrderItemByOrder(int orderid);

    void insert(OrderItem oi);

    void update(OrderItem oi);
    
}
