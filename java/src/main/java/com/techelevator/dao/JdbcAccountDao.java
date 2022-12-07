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
    public Account findUserByName(String firstName, String lastName) {
        String sql = "SELECT * FROM users WHERE firstName = ? AND lastName = ?;";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, firstName, lastName);
        if(results.next()){
            return mapRowToAccount(results);
        }else {

            return null;
        }
    }

    private Account mapRowToAccount(SqlRowSet rs) {
        Account account = new Account();
        account.setAccountID(rs.getInt("account_id"));
        account.setUserID(rs.getInt("user_id"));
        account.setRole(rs.getString("role"));
        account.setFirstName(rs.getString("first_name"));
        account.setLastName(rs.getString("last_name"));
        account.setEmail(rs.getString("email"));
        account.setGoals(rs.getString("goals"));
        account.setMediaURL(rs.getString("media_url"));

        return account;
    }

}
