package com.nhom8.dao;

import com.nhom8.entity.CartItem;
import java.util.List;

public interface CartItemDAO {

    void delete(int ciid);

    List<CartItem> getAllCartItems();

    List<CartItem> getCartItemByCart(int cartid);

    void insert(CartItem ci);

    void update(CartItem ci);

    CartItem getCartItemByID(int ciid);
    
}
