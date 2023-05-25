package com.nhom8.dao;

import com.nhom8.context.DBUtil;
import com.nhom8.entity.OrderItem;
import java.util.Collections;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

public class OrderItemDAOImpl implements OrderItemDAO {
    @Override
    public List<OrderItem> getAllOrderItems() {
        EntityManager em = DBUtil.getEmFactory().createEntityManager(); //trả về đối tượng EM
        // createQuery khi dùng câu lệnh thẳng, createNamedQuery khi dùng câu lệnh đã đặt tên bên entity
        TypedQuery<OrderItem> q = em.createNamedQuery("OrderItem.findAll", OrderItem.class); // trả về kết quả dưới dạng đối tượng của class

        List<OrderItem> orderitem;
        try {
            orderitem = q.getResultList();
            if (orderitem == null || orderitem.isEmpty()) {
                orderitem = null;
            }
        } finally {
            em.close();
        }
        return orderitem;
    }

    @Override
    public List<OrderItem> getOrderItemByOrder(int orderid) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager(); //trả về đối tượng EM
        // createQuery khi dùng câu lệnh thẳng, createNamedQuery khi dùng câu lệnh đã đặt tên bên entity
        TypedQuery<OrderItem> q = em.createQuery("SELECT oi FROM MyOrder o JOIN o.orderitems oi WHERE o.id = :orderid", OrderItem.class); // trả về kết quả dưới dạng đối tượng của class

        q.setParameter("orderid", orderid);

        List<OrderItem> oi;
        try {
            oi = q.getResultList();
            if (oi.isEmpty() || oi == null) {
                oi = Collections.emptyList();
            }
        } finally {
            em.close();
        }
        return oi;
    }

    @Override
    public OrderItem getOrderItemByID(int oiid) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager(); //trả về đối tượng EM
        // createQuery khi dùng câu lệnh thẳng, createNamedQuery khi dùng câu lệnh đã đặt tên bên entity
        TypedQuery<OrderItem> q = em.createQuery("SELECT oi FROM OrderItem oi WHERE oi.id = :oiid", OrderItem.class); // trả về kết quả dưới dạng đối tượng của class
        q.setParameter("oiid", oiid); // Truyền tham số

        OrderItem orderitem;
        try {
            orderitem = q.getSingleResult();
        } finally {
            em.close();
        }
        return orderitem;
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
        CartItemDAOImpl dao = new CartItemDAOImpl();
        dao.delete(6);
    }
    
    @Override
    public void insert(OrderItem oi) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        try {
            trans.begin();
            em.persist(oi);
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
    public void delete(int oiid) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        try {
            OrderItem oi = em.find(OrderItem.class, oiid);
            //if(p != null){
            em.remove(oi);
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
    public void update(OrderItem oi) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        trans.begin();
        try {
            em.merge(oi);
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
