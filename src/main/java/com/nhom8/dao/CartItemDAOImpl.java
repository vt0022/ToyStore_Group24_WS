package com.nhom8.dao;

import com.nhom8.context.DBUtil;
import com.nhom8.entity.CartItem;
import java.util.Collections;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

public class CartItemDAOImpl implements CartItemDAO {

    @Override
    public List<CartItem> getAllCartItems() {
        EntityManager em = DBUtil.getEmFactory().createEntityManager(); //trả về đối tượng EM
        // createQuery khi dùng câu lệnh thẳng, createNamedQuery khi dùng câu lệnh đã đặt tên bên entity
        TypedQuery<CartItem> q = em.createNamedQuery("CartItem.findAll", CartItem.class); // trả về kết quả dưới dạng đối tượng của class

        List<CartItem> cart;
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
    public List<CartItem> getCartItemByCart(int cartid) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager(); //trả về đối tượng EM
        // createQuery khi dùng câu lệnh thẳng, createNamedQuery khi dùng câu lệnh đã đặt tên bên entity
        TypedQuery<CartItem> q = em.createQuery("SELECT ci FROM Cart c JOIN c.cartitems ci WHERE c.id = :cartid AND ci.product.status = 1", CartItem.class); // trả về kết quả dưới dạng đối tượng của class

        q.setParameter("cartid", cartid);

        List<CartItem> ci;
        try {
            ci = q.getResultList();
            if (ci.isEmpty() || ci == null) {
                ci = Collections.emptyList();
            }
        } finally {
            em.close();
        }
        return ci;
    }

    @Override
    public CartItem getCartItemByID(int ciid) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager(); //trả về đối tượng EM
        // createQuery khi dùng câu lệnh thẳng, createNamedQuery khi dùng câu lệnh đã đặt tên bên entity
        TypedQuery<CartItem> q = em.createQuery("SELECT ci FROM CartItem ci WHERE ci.id = :ciid", CartItem.class); // trả về kết quả dưới dạng đối tượng của class
        q.setParameter("ciid", ciid); // Truyền tham số

        CartItem cartitem;
        try {
            cartitem = q.getSingleResult();
        } finally {
            em.close();
        }
        return cartitem;
    }

    /*
    public static void main(String[] args) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        trans.begin();
        CartItem p = em.find(CartItem.class, "DC010");
        System.out.println(p.getId());
    }
     */
    public static void main(String[] args) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        CartItemDAOImpl dao = new CartItemDAOImpl();
        CartItem ci = em.find(CartItem.class, 17);
        //dao.delete(14);
        System.out.print(ci.getId());
    }

    @Override
    public void insert(CartItem ci) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        try {
            trans.begin();
            em.persist(ci);
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
    public void delete(int ciid) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        trans.begin();
        try {
            CartItem ci = em.find(CartItem.class, ciid);
            if (ci != null) {
                //ci.setCart(null);
                //ci.setProduct(null);
                em.remove(ci);
            }
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
    public void update(CartItem ci) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        trans.begin();
        try {
            em.merge(ci);
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
