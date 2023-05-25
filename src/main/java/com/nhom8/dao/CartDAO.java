package com.nhom8.dao;

import com.nhom8.entity.Cart;
import java.util.List;

public interface CartDAO {

    void delete(int cid);

    List<Cart> getAllCarts();

    Cart getCartByCusID(int cid);

    void insert(Cart c);

    void update(Cart c);
    
}
