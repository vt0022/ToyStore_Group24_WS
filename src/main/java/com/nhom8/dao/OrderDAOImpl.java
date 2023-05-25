package com.nhom8.dao;

import com.nhom8.context.DBUtil;
import com.nhom8.entity.MyOrder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

public class OrderDAOImpl implements OrderDAO {

    @Override
    public List<MyOrder> getAllOrders() {
        EntityManager em = DBUtil.getEmFactory().createEntityManager(); //trả về đối tượng EM
        // createQuery khi dùng câu lệnh thẳng, createNamedQuery khi dùng câu lệnh đã đặt tên bên entity
        TypedQuery<MyOrder> q = em.createNamedQuery("MyOrder.findAll", MyOrder.class); // trả về kết quả dưới dạng đối tượng của class

        List<MyOrder> order = new ArrayList<>();
        try {
            order = q.getResultList();
            if (order.isEmpty() || order == null) {
                order = Collections.emptyList();
            }
        } finally {
            em.close();
        }
        return order;
    }

    @Override
    public List<MyOrder> getOrdersByCusID(int cid) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager(); //trả về đối tượng EM
        // createQuery khi dùng câu lệnh thẳng, createNamedQuery khi dùng câu lệnh đã đặt tên bên entity
        TypedQuery<MyOrder> q = em.createQuery("SELECT o FROM Account a JOIN a.order o WHERE a.id = :cid", MyOrder.class); // trả về kết quả dưới dạng đối tượng của class

        q.setParameter("cid", cid);

        List<MyOrder> order = new ArrayList<>();
        try {
            order = q.getResultList();
            if (order.isEmpty() || order == null) {
                order = Collections.emptyList();
            }
        } finally {
            em.close();
        }
        return order;
    }

    public static void main(String[] args) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        OrderDAOImpl dao = new OrderDAOImpl();
        trans.begin();
        List<MyOrder> p = dao.getAllOrders();
        System.out.println(p.size());
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
    public void insert(MyOrder o) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        trans.begin();
        try {
            em.persist(o);
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
    public void delete(int orderid) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        trans.begin();
        try {
            MyOrder o = em.find(MyOrder.class, orderid);
            em.remove(o);
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
    public void update(MyOrder o) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        trans.begin();
        try {
            em.merge(o);
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
