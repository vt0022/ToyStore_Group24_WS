package com.nhom8.dao;

import com.nhom8.entity.Category;
import com.nhom8.context.DBUtil;
import com.nhom8.entity.Product;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

public class CategoryDAOImpl implements CategoryDAO {

    @Override
    public List<Category> getAllCategories() {
        EntityManager em = DBUtil.getEmFactory().createEntityManager(); //trả về đối tượng EM
        // createQuery khi dùng câu lệnh thẳng, createNamedQuery khi dùng câu lệnh đã đặt tên bên entity
        TypedQuery<Category> q = em.createNamedQuery("Category.findAll", Category.class); // trả về kết quả dưới dạng đối tượng của class

        List<Category> cat;
        try {
            cat = q.getResultList();
            if (cat == null || cat.isEmpty()) {
                cat = null;
            }
        } finally {
            em.close();
        }
        return cat;
    }

    @Override
    public List<Category> getActiveCategories() {
        EntityManager em = DBUtil.getEmFactory().createEntityManager(); //trả về đối tượng EM
        // createQuery khi dùng câu lệnh thẳng, createNamedQuery khi dùng câu lệnh đã đặt tên bên entity
        TypedQuery<Category> q = em.createNamedQuery("Category.findActive", Category.class); // trả về kết quả dưới dạng đối tượng của class

        List<Category> cat;
        try {
            cat = q.getResultList();
            if (cat == null || cat.isEmpty()) {
                cat = null;
            }
        } finally {
            em.close();
        }
        return cat;
    }

    @Override
    public Category getCategoryByID(int cid) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager(); //trả về đối tượng EM
        // createQuery khi dùng câu lệnh thẳng, createNamedQuery khi dùng câu lệnh đã đặt tên bên entity
        TypedQuery<Category> q = em.createQuery("SELECT c FROM Category c WHERE c.id = :cid", Category.class); // trả về kết quả dưới dạng đối tượng của class
        q.setParameter("cid", cid); // Truyền tham số

        Category category;
        try {
            category = q.getSingleResult();
        } finally {
            em.close();
        }
        return category;
    }

    public static void main(String[] args) {
        CategoryDAOImpl dao = new CategoryDAOImpl();
        Category p = dao.getCategoryByID(4);

        List<Product> pro = p.getProducts();
        //
        if (p.getProducts().isEmpty()) {
            System.out.println("Rỗng");
        } else {
            for (Product pr : p.getProducts()) {
                System.out.println(pr.getName() + pr.getId());
            }
        }
    }

    @Override
    public void insert(Category c) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        try {
            trans.begin();
            em.persist(c);
            trans.commit();
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
            throw e;
        } finally {
            em.close();
        }
    }

    @Override
    public void delete(int id) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        if (!trans.isActive()) {
            trans.begin();
        }

        try {
            Category c = em.find(Category.class, id);
            //if(p != null){
            em.remove(c);
            //}
            //else{
            //    throw new Exception("Không tìm thấy!");
            //}

            trans.commit();
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
            throw e;
        } finally {
            em.close();
        }
    }

    @Override
    public void update(Category c) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        trans.begin();
        try {
            em.merge(c);
            trans.commit();
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
            throw (e);
        } finally {
            em.close();
        }
    }
}
