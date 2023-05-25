package com.nhom8.context;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;


public class DBUtil {
    private static final EntityManagerFactory emf = Persistence.createEntityManagerFactory("ToyStoreDB");
    // Lấy đối tượng EMF của persistence unit (DB)
    public static EntityManagerFactory getEmFactory(){
        return emf;
    }
}
