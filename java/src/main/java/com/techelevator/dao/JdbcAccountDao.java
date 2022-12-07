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
    public boolean createAccount(int userId) {
        String sql = "INSERT INTO account (user_id, first_name, last_name, email, goal, media_url)" +
                    "VALUES (?,?,?,?,?,?) RETURNING account_id;";
        Integer newAccountId = jdbcTemplate.queryForObject(sql, Integer.class, userId);
        return newAccountId != null;
    }

    @Override
    public Account getAccountByUserId(int userId) {
        String sql = "Select account_id, user_id, first_name, last_name, email, goal, media_url from account where user_id = ?;";
        try {
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql,userId);
        if (results.next()) {
            return mapRowToAccount(results);
        } else {
            return null;
        }
    }


    @Override
    public Account findUserByName(String firstName, String lastName) {
        Account account = null;
            String sql = "SELECT * FROM users WHERE firstName = ? AND lastName = ?;";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, firstName, lastName);
        if(results.next()){
            account = mapRowToAccount(results);
        }else {

            if (singleTransfer == null) {
                throw new IllegalArgumentException("Could not locate transfer id" + transferId)
        }
    }

    private Account mapRowToAccount(SqlRowSet rs) {
        Account account = new Account();
        account.setAccountId(rs.getAccountID("account_id"));
        account.setFirstName(rs.getString("first_name"));
        account.setLastName(rs.getString("last_name"));


        return account;
    }

}
