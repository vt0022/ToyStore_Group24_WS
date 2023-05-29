package com.nhom8.dao;

import com.nhom8.entity.Account;

import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.List;

public interface AccountDAO {

    Account adminLogin(String username, String password) throws NoSuchAlgorithmException, InvalidKeySpecException;

    Account checkExist(String username);

    void delete(int id);

    Account getAccountByID(int id);

    List<Account> getAllAccounts();

    Account login(String username, String password) throws NoSuchAlgorithmException, InvalidKeySpecException;

    void register(Account acc) throws NoSuchAlgorithmException, InvalidKeySpecException;

    void update(Account acc);
    
}
