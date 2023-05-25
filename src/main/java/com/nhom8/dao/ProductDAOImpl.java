package com.nhom8.dao;

import com.nhom8.entity.Product;
import com.nhom8.context.DBUtil;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

public class ProductDAOImpl implements ProductDAO {

    @Override
    public List<Product> getAllProducts() {
        EntityManager em = DBUtil.getEmFactory().createEntityManager(); //trả về đối tượng EM
        // createQuery khi dùng câu lệnh thẳng, createNamedQuery khi dùng câu lệnh đã đặt tên bên entity
        TypedQuery<Product> q = em.createNamedQuery("Product.findAll", Product.class); // trả về kết quả dưới dạng đối tượng của class

        List<Product> product;
        try {
            product = q.getResultList();
            if (product == null || product.isEmpty()) {
                product = null;
            }
        } finally {
            em.close();
        }
        return product;
    }
    
    @Override
    public List<Product> getActiveProducts() {
        EntityManager em = DBUtil.getEmFactory().createEntityManager(); //trả về đối tượng EM
        // createQuery khi dùng câu lệnh thẳng, createNamedQuery khi dùng câu lệnh đã đặt tên bên entity
        TypedQuery<Product> q = em.createNamedQuery("Product.findActive", Product.class); // trả về kết quả dưới dạng đối tượng của class

        List<Product> product;
        try {
            product = q.getResultList();
            if (product == null || product.isEmpty()) {
                product = null;
            }
        } finally {
            em.close();
        }
        return product;
    }

    @Override
    public List<Product> getProductsByCategory(int cid) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager(); //IN(u.projects) p WHERE u.id=:userId

        TypedQuery<Product> q = em.createQuery("SELECT p FROM Category c, IN(c.products) p WHERE c.id = :cid AND c.status = 1 AND p.status = 1", Product.class);
        q.setParameter("cid", cid);

        List<Product> product;
        try {
            product = q.getResultList();
            if (product == null || product.isEmpty()) {
                product = null;
            }
        } finally {
            em.close();
        }
        return product;
    }

    @Override
    public Product getProductByID(int pid) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager(); //trả về đối tượng EM
        // createQuery khi dùng câu lệnh thẳng, createNamedQuery khi dùng câu lệnh đã đặt tên bên entity
        TypedQuery<Product> q = em.createQuery("SELECT p FROM Product p WHERE p.id = :pid", Product.class); // trả về kết quả dưới dạng đối tượng của class
        q.setParameter("pid", pid); // Truyền tham số

        Product product;
        try {
            product = q.getSingleResult();
        } finally {
            em.close();
        }
        return product;
    }

    public static void main(String[] args) {
        ProductDAOImpl dao = new ProductDAOImpl();
        int p ;
        p = dao.countProductsWithCategory(2); 
        System.out.println(p);
    }

    @Override
    public void insert(Product p) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        try {
            trans.begin();
            em.persist(p);
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
        if (!trans.isActive()){
            trans.begin();
        }

        try {
            Product p = em.find(Product.class, id);
            em.remove(p);
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
    public void update(Product p) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        trans.begin();
        try {
            em.merge(p);
            trans.commit();
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
            throw (e);
        } finally {
            em.close();
        }
    }

    @Override
    public int countProducts() {
        EntityManager em = DBUtil.getEmFactory().createEntityManager(); //trả về đối tượng EM
        // createQuery khi dùng câu lệnh thẳng, createNamedQuery khi dùng câu lệnh đã đặt tên bên entity
        //Query q = em.createQuery("SELECT COUNT(p) FROM Product p"); // trả về kết quả dưới dạng đối tượng của class
        TypedQuery<Number> q = em.createQuery("SELECT COUNT(p) FROM Product p WHERE p.status = 1 AND p.category.status = 1", Number.class); // trả về kết quả dưới dạng đối tượng của class

        int total;
        try {
            total = q.getSingleResult().intValue();
        } finally {
            em.close();
        }
        return total;
    }

    @Override
    public List<Product> pagingProducts(int index, int count) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager(); //trả về đối tượng EM
        // createQuery khi dùng câu lệnh thẳng, createNamedQuery khi dùng câu lệnh đã đặt tên bên entity
        TypedQuery<Product> q = em.createQuery("SELECT p FROM Product p WHERE p.status = 1 AND p.category.status = 1 ORDER BY p.id", Product.class); // trả về kết quả dưới dạng đối tượng của class
        // Không dùng câu lệnh OFFSET FETCH
        // Hoặc createNativeQuery dùng LIMIT OFFSET
        List<Product> product;
        try {
            product = q.setMaxResults(count).setFirstResult(count * (index - 1)).getResultList();
            if (product == null || product.isEmpty()) {
                product = null;
            }
        } finally {
            em.close();
        }
        return product;
    }

    @Override
    public List<Product> searchProducts(String name, int index, int count) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager(); //trả về đối tượng EM
        // createQuery khi dùng câu lệnh thẳng, createNamedQuery khi dùng câu lệnh đã đặt tên bên entity
        TypedQuery<Product> q = em.createQuery("SELECT p FROM Product p WHERE p.name LIKE :name AND p.status = 1 AND p.category.status = 1", Product.class); // trả về kết quả dưới dạng đối tượng của class
        // Không dùng câu lệnh OFFSET FETCH
        // Hoặc createNativeQuery dùng LIMIT OFFSET
        q.setParameter("name", "%" + name + "%"); // Truyền tham số
        List<Product> product;
        try {
            product = q.setMaxResults(count).setFirstResult(count * (index - 1)).getResultList();
            if (product == null || product.isEmpty()) {
                product = null;
            }
        } finally {
            em.close();
        }
        return product;
    }

    @Override
    public int countProductsWithSearch(String name) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager(); //trả về đối tượng EM
        // createQuery khi dùng câu lệnh thẳng, createNamedQuery khi dùng câu lệnh đã đặt tên bên entity
        //Query q = em.createQuery("SELECT COUNT(p) FROM Product p"); // trả về kết quả dưới dạng đối tượng của class
        TypedQuery<Number> q = em.createQuery("SELECT COUNT(p) FROM Product p WHERE p.name LIKE :name AND p.status = 1 AND p.category.status = 1", Number.class); // trả về kết quả dưới dạng đối tượng của class

        q.setParameter("name", "%" + name + "%"); // Truyền tham số

        int total;
        try {
            total = q.getSingleResult().intValue();
        } finally {
            em.close();
        }
        return total;
    }
    
    @Override
    public List<Product> pagingProductsByCategory(int cid, int index, int count) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();

        TypedQuery<Product> q = em.createQuery("SELECT p FROM Category c, IN(c.products) p WHERE c.id = :cid AND c.status = 1 AND p.status = 1", Product.class);
        q.setParameter("cid", cid);

        List<Product> product;
        try {
            product = q.setMaxResults(count).setFirstResult(count * (index - 1)).getResultList();
            if (product == null || product.isEmpty()) {
                product = null;
            }
        } finally {
            em.close();
        }
        return product;
    }
    
    @Override
    public int countProductsWithCategory(int cid) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager(); //trả về đối tượng EM
        // createQuery khi dùng câu lệnh thẳng, createNamedQuery khi dùng câu lệnh đã đặt tên bên entity
        // Query q = em.createQuery("SELECT COUNT(p) FROM Product p"); // trả về kết quả dưới dạng đối tượng của class
        TypedQuery<Number> q = em.createQuery("SELECT COUNT(p) FROM Category c, IN(c.products) p WHERE c.id = :cid AND c.status = 1 AND p.status = 1", Number.class); // trả về kết quả dưới dạng đối tượng của class

        q.setParameter("cid", cid); // Truyền tham số

        int total;
        try {
            total = q.getSingleResult().intValue();
        } finally {
            em.close();
        }
        return total;
    }
    
}
