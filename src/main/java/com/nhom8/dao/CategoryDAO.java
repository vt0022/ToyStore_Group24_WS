package com.nhom8.dao;

import com.nhom8.entity.Category;
import java.util.List;

public interface CategoryDAO {  
    public List<Category> getAllCategories();
    public Category getCategoryByID(int id);

    void delete(int id);

    void insert(Category c);

    void update(Category c);

    List<Category> getActiveCategories();
}
