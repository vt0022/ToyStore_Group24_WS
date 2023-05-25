package com.nhom8.dao;

import com.nhom8.entity.Product;
import java.util.List;

public interface ProductDAO {  
    public List<Product> getAllProducts();
    
    public Product getProductByID(int pid);
            
    public List<Product> getProductsByCategory(int cid);
    
    public int countProducts();
    
    public List<Product> pagingProducts(int index, int count); // chỉ mục trang và số sản phẩm trên 1 trang
    
    public List<Product> searchProducts(String name, int index, int count);
    
    public void insert(Product p);      
    
    public void delete(int id);
    
    public void update(Product p);

    int countProductsWithSearch(String name);

    List<Product> getActiveProducts();

    int countProductsWithCategory(int cid);

    List<Product> pagingProductsByCategory(int cid, int index, int count);

}
