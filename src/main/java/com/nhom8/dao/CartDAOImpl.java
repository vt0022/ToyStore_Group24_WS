package com.nhom8.dao;

import com.nhom8.context.DBUtil;
import com.nhom8.entity.Cart;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

public class CartDAOImpl implements CartDAO{
    @Override
    public List<Cart> getAllCarts() {
        EntityManager em = DBUtil.getEmFactory().createEntityManager(); //trả về đối tượng EM
        // createQuery khi dùng câu lệnh thẳng, createNamedQuery khi dùng câu lệnh đã đặt tên bên entity
        TypedQuery<Cart> q = em.createNamedQuery("Cart.findAll", Cart.class); // trả về kết quả dưới dạng đối tượng của class

        List<Cart> cart;
        try {
            cart = q.getResultList();
            if (cart == null || cart.isEmpty()) {
                cart = null;
            }
        } finally {
            em.close();
        }
        return cart;
    }

    @Override
    public Cart getCartByCusID(int cid) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager(); //trả về đối tượng EM
        // createQuery khi dùng câu lệnh thẳng, createNamedQuery khi dùng câu lệnh đã đặt tên bên entity
        TypedQuery<Cart> q = em.createQuery("SELECT c FROM Account a JOIN a.cart c WHERE a.id = :cid", Cart.class); // trả về kết quả dưới dạng đối tượng của class
        
        q.setParameter("cid", cid);

        List<Cart> c = new ArrayList<>();
        try {
            c = q.getResultList();
        } finally {
            em.close();
        }
        if(c.isEmpty()){
            return null;
        }  
        return c.get(0);
    }

    public static void main(String[] args) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        trans.begin();
        Cart p = em.find(Cart.class, "DC010");
        System.out.println(p.getId());
    }

    /*
    public static void main(String[] args) {
        CartDAOImpl dao = new CartDAOImpl();
        int p ;
        p = dao.countCarts(); 
        System.out.println(p);
    }
     */
    
    @Override
    public void insert(Cart c) {
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
    public void delete(int cid) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        if (!trans.isActive()){
            trans.begin();
        }

        try {
            Cart c = em.find(Cart.class, cid);
            em.remove(c);

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
    public void update(Cart c) {
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
