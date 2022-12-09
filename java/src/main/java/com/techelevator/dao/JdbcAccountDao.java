package com.techelevator.dao;

import com.techelevator.model.Account;
import com.techelevator.model.User;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
@Component
public class JdbcAccountDao implements AccountDao {

    private final JdbcTemplate jdbcTemplate;

    public JdbcAccountDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public boolean createAccount(Account account) {
        String sql = "INSERT INTO account (user_id, first_name, last_name, email, goal, media_url)" +
                    "VALUES (?,?,?,?,?,?);";

        return jdbcTemplate.update(sql, account.getUserId(), account.getFirstName(), account.getLastName(), account.getEmail(),
                    account.getGoal(), account.getMediaURL()) == 1;
        }



//Front-end doesn't need all info - may want to add media_url
    @Override
    public List<Account> listUserAccount(){
        List <Account> accountList = new ArrayList<>();
        String sql = "SELECT first_name, last_name, user_id FROM account;";
        try {
            SqlRowSet result = jdbcTemplate.queryForRowSet(sql);
            while (result.next()) {
                accountList.add(result.getString("first_name"), result.getString("last_name"), result.getInt("user_id"));
            }//can't use mapper function need to map each field
        } catch (Exception e) {
            throw e;
    }
        return accountList;
    }



    //used for authorization login.
    @Override
    public Account findAccountByUserId(int userId) {
        Account account = null;
        String sql = "Select account_id, user_id, first_name, last_name, role, email, goal, media_url from account where user_id = ?;";
        try {
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql,userId);
            if (results.next()) {
                account = mapRowToAccount(results);
            }
        } catch (Exception e) {
            throw e;
        }
        return account;
    }


    @Override
    public Account findAccountByName(String firstName, String lastName) {
        Account account = null;
            String sql = "SELECT account_id, user_id, first_name, last_name, role, email, goal, media_url FROM account WHERE firstName = ? AND lastName = ?;";
        try {
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql, firstName, lastName);
            if (results.next()) {
                account = mapRowToAccount(results);
            }
        } catch (Exception e) {
            throw e;
        }
        return account;
    }

    @Override
    public Account findAccountByUsername(String username){
        String sql = "SELECT account_id, user_id, first_name, last_name, email, goal, role, media_url FROM account JOIN users using (user_id) WHERE username = ?;";
        SqlRowSet result = jdbcTemplate.queryForRowSet(sql, username);

        if(result.next()){
            return mapRowToAccount(result);
        }
        return null;
    }

    @Override
    public void updateAccount(Account account) {
        String sql = "UPDATE account SET first_name = ?, last_name = ?, email = ?, goal = ?, media_url = ? where user_id = ?;";
        try {
            jdbcTemplate.update(sql, account.getFirstName(), account.getLastName(), account.getEmail(), account.getGoal(), account.getMediaURL(), account.getUserId());
        } catch (Exception e) {
            throw e;
        }
    }

    private Account mapRowToAccount(SqlRowSet rs) {
        Account account = new Account();
        account.setAccountId(rs.getInt("account_id"));
        account.setUserId(rs.getInt("user_id"));
        account.setRole(rs.getString("role"));
        account.setFirstName(rs.getString("first_name"));
        account.setLastName(rs.getString("last_name"));
        account.setEmail(rs.getString("email"));
        account.setGoal(rs.getString("goal"));
        account.setMediaURL(rs.getString("media_url"));

        return account;
    }

}
