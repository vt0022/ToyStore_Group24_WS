package com.nhom8.dao;

import com.nhom8.entity.Account;
import java.util.List;

public interface AccountDAO {

    Account adminLogin(String username, String password);

    Account checkExist(String username);

    void delete(int id);

    Account getAccountByID(int id);

    List<Account> getAllAccounts();

    Account login(String username, String password);

    void register(Account acc);

    void update(Account acc);
    
}
