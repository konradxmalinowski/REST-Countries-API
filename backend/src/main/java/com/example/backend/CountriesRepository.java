package com.example.backend;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.amqp.RabbitProperties;
import org.springframework.jdbc.core.BatchPreparedStatementSetter;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.List;

@org.springframework.stereotype.Repository
public class CountriesRepository {

    @Autowired
    JdbcTemplate jdbcTemplate;


    public List<Country> getAllCountries() {
        return jdbcTemplate.query("SELECT * FROM countries", BeanPropertyRowMapper.newInstance(Country.class));
    }

    public Country getCountryById(int id) {
        return jdbcTemplate.queryForObject("SELECT * FROM countries WHERE id = ?", BeanPropertyRowMapper.newInstance(Country.class), id);
    }

    public Integer getRegionIdByCountryName(String countryName) {
        return jdbcTemplate.query("SELECT Id from regions where name = ?", Integer.class, countryName);
    }


    public int addCountry(Country country) {
        Integer id = getRegionIdByCountryName(country.getName());

        if (id == null) {
            return -1;
        }

        String sql = "INSERT INTO countries (" +
                "name,  capital, population, flag, countryId) " +
                "VALUES (?, ?, ?, ?, ?)";

        return jdbcTemplate.update(sql, country.getName(), country.getCapital(), country.getPopulation(), country.getFlag(), id.intValue());
    }


    public int addCountries(List<Country> countries) {
        String sql = "INSERT INTO countries (" +
                "name,  capital, population,  flag) " +
                "VALUES (?, ?, ?, ?)";


//      aby zwracało int[] a nie int[][]
        int[] result = jdbcTemplate.batchUpdate(sql, new BatchPreparedStatementSetter() {
                    @Override
                    public void setValues(PreparedStatement ps, int i) throws SQLException {
                        Country country = countries.get(i);
                        ps.setString(1, country.getName());
                        ps.setString(2, country.getCapital());
                        ps.setLong(3, country.getPopulation());
                        ps.setString(4, country.getFlag());
                    }

                    @Override
                    public int getBatchSize() {
                        return countries.size();
                    }
                });


        System.out.println(result);
        return Arrays.stream(result).sum();

    }


}
