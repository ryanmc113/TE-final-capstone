package com.techelevator.dao;

import com.techelevator.model.Account;
import com.techelevator.model.User;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import java.util.Objects;

public class JdbcAccountDao implements AccountDao {

    private final JdbcTemplate jdbcTemplate;

    public JdbcAccountDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public boolean createAccount(Account account) {
        String sql = "INSERT INTO account (user_id, first_name, last_name, email, goal, media_url)" +
                    "VALUES (?,?,?,?,?,?) RETURNING account_id;";

        return jdbcTemplate.update(sql, account.getUserId(), account.getFirstName(), account.getLastName(), account.getEmail(),
                    account.getGoals(), account.getMediaURL()) == 1;
        }


    //used for authorization login.
    @Override
    public Account findAccountByUserId(int userId) {
        Account account = null;
        String sql = "Select account_id, user_id, first_name, last_name, email, goal, media_url from account where user_id = ?;";
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
            String sql = "SELECT account_id, user_id, first_name, last_name, email, goal, media_url FROM account WHERE firstName = ? AND lastName = ?;";
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

    private Account mapRowToAccount(SqlRowSet rs) {
        Account account = new Account();
        account.setAccountId(rs.getInt("account_id"));
        account.setUserId(rs.getInt("user_id"));
        account.setRole(rs.getString("role"));
        account.setFirstName(rs.getString("first_name"));
        account.setLastName(rs.getString("last_name"));
        account.setEmail(rs.getString("email"));
        account.setGoals(rs.getString("goals"));
        account.setMediaURL(rs.getString("media_url"));

        return account;
    }

}
