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
            return mapRowToUser(results);
        }else {

            return null;
        }
    }

    private Account mapRowToUser(SqlRowSet rs) {
        Account account = new Account();
        account.setAccountId(rs.getAccountId("account_id"));
        account.setFirstName(rs.getString("first_name"));
        account.setLastName(rs.getString("last_name"));


        return account;
    }

}
