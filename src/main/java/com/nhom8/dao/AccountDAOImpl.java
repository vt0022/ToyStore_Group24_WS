package com.nhom8.dao;

import com.nhom8.context.DBUtil;
import com.nhom8.entity.Account;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

public class AccountDAOImpl implements AccountDAO{

    @Override
    public List<Account> getAllAccounts() {
        EntityManager em = DBUtil.getEmFactory().createEntityManager(); //trả về đối tượng EM
        // createQuery khi dùng câu lệnh thẳng, createNamedQuery khi dùng câu lệnh đã đặt tên bên entity
        TypedQuery<Account> q = em.createNamedQuery("Account.findAll", Account.class); // trả về kết quả dưới dạng đối tượng của class

        List<Account> acc;
        try {
            acc = q.getResultList();
            if (acc == null || acc.isEmpty()) {
                acc = null;
            }
        } finally {
            em.close();
        }
        return acc;
    }

    @Override
    public Account getAccountByID(int id) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager(); //trả về đối tượng EM
        // createQuery khi dùng câu lệnh thẳng, createNamedQuery khi dùng câu lệnh đã đặt tên bên entity
        TypedQuery<Account> q = em.createQuery("SELECT acc FROM Account acc WHERE acc.id = :id", Account.class); // trả về kết quả dưới dạng đối tượng của class
        q.setParameter("id", id); // Truyền tham số

        Account a;
        try {
            a = q.getSingleResult();
        } finally {
            em.close();
        }
        if (a == null) {
            return null;
        }
        return a;
    }

    @Override
    public Account login(String username, String password) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager(); //trả về đối tượng EM
        // createQuery khi dùng câu lệnh thẳng, createNamedQuery khi dùng câu lệnh đã đặt tên bên entity
        TypedQuery<Account> q = em.createQuery("SELECT acc FROM Account acc WHERE acc.username = :username AND acc.password = :password AND acc.type = 1 AND acc.status = 1", Account.class); // trả về kết quả dưới dạng đối tượng của class
        q.setParameter("username", username); // Truyền tham số
        q.setParameter("password", password);

        List<Account> a = new ArrayList<>();
        try {
            a = q.getResultList();
        } finally {
            em.close();
        }
        if (a.isEmpty()) {
            return null;
        }
        return a.get(0);
    }

    @Override
    public Account adminLogin(String username, String password) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager(); //trả về đối tượng EM
        // createQuery khi dùng câu lệnh thẳng, createNamedQuery khi dùng câu lệnh đã đặt tên bên entity
        TypedQuery<Account> q = em.createQuery("SELECT acc FROM Account acc WHERE acc.username = :username AND acc.password = :password AND acc.type = 0 AND acc.status = 1", Account.class); // trả về kết quả dưới dạng đối tượng của class
        q.setParameter("username", username); // Truyền tham số
        q.setParameter("password", password);

        List<Account> a = new ArrayList<>();
        try {
            a = q.getResultList();
        } finally {
            em.close();
        }
        if (a.isEmpty()) {
            return null;
        }
        return a.get(0);
    }

    @Override
    public Account checkExist(String username) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager(); //trả về đối tượng EM
        // createQuery khi dùng câu lệnh thẳng, createNamedQuery khi dùng câu lệnh đã đặt tên bên entity
        TypedQuery<Account> q = em.createQuery("SELECT acc FROM Account acc WHERE acc.username = :username", Account.class); // trả về kết quả dưới dạng đối tượng của class
        q.setParameter("username", username); // Truyền tham số

        List<Account> a = new ArrayList<>();
        try {
            a = q.getResultList();
        } finally {
            em.close();
        }
        if (a.isEmpty()) {
            return null;
        }
        return a.get(0);
    }

    @Override
    public void register(Account acc) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        try {
            trans.begin();
            em.persist(acc);
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
    public void update(Account acc) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        try {
            trans.begin();
            em.merge(acc);
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
        trans.begin();
        try {
            Account acc = em.find(Account.class, id);
            em.remove(acc);
            trans.commit();
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
            throw e;
        } finally {
            em.close();
        }
    }

    public static void main(String[] args) {
        AccountDAOImpl dao = new AccountDAOImpl();
        Account a = dao.checkExist("thuan1012");
        if (a == null) {
            System.out.println("No");
        } else {
            System.out.println(a.getUsername());
        }
    }
}
