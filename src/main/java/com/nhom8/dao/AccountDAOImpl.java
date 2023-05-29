package com.nhom8.dao;

import com.nhom8.context.DBUtil;
import com.nhom8.context.HashUtil;
import com.nhom8.entity.Account;

import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
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
    public Account login(String username, String password) throws NoSuchAlgorithmException, InvalidKeySpecException {
        // Check username and get hashed password
        Account myAccount = checkExist(username);
        String myPassword;
        if (myAccount == null)
            return null;
        else
            myPassword = myAccount.getPassword();

        // Validate password
        if (HashUtil.validatePassword(password, myPassword))
            return myAccount;
        else
            return null;
    }

    @Override
    public Account adminLogin(String username, String password) throws NoSuchAlgorithmException, InvalidKeySpecException {
        // Check username and get hashed password
        Account myAccount = checkExist(username);
        String myPassword;
        if (myAccount == null)
            return null;
        else
            myPassword = myAccount.getPassword();

        // Validate password and role
        if (HashUtil.validatePassword(password, myPassword))
            if (myAccount.getType() == 0)
                return myAccount;
        return null;
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
    public void register(Account acc) throws NoSuchAlgorithmException, InvalidKeySpecException {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        // Create hashed password
        acc.setPassword(HashUtil.generatePasswordHash(acc.getPassword()));
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

    public static void main(String[] args) throws NoSuchAlgorithmException, InvalidKeySpecException {
        AccountDAOImpl dao = new AccountDAOImpl();
        System.out.println(dao.login("thuan1012", "thuan1012"));
    }
}
