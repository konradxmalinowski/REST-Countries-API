package com.example.backend;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

@org.springframework.stereotype.Repository
public class CountriesRepository {

    @Autowired
    JdbcTemplate jdbcTemplate;

    public List<Country> getAllCountries() {
        return jdbcTemplate.query("SELECT countries.Id, countries.name, capital, population, flag, regions.name as region FROM countries join regions on regions.Id = countries.regionId", BeanPropertyRowMapper.newInstance(Country.class));
    }

    public List<Region> getAllRegions() {
        return jdbcTemplate.query("SELECT * FROM regions", BeanPropertyRowMapper.newInstance(Region.class));
    }

    public Country getCountryById(int id) {
        try {
            return jdbcTemplate.queryForObject(
                    "SELECT * FROM countries WHERE id = ?",
                    BeanPropertyRowMapper.newInstance(Country.class),
                    id
            );
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }


    public Region getRegionById(int id) {
        return jdbcTemplate.queryForObject("SELECT * FROM regions WHERE id = ?",BeanPropertyRowMapper.newInstance(Region.class) ,id);
    }

    public int addRegion(Region region) {
        try {
            int result = jdbcTemplate.update("INSERT INTO regions (name) VALUES (?)",region.getName());
            return result;
        } catch (DataAccessException e) {
            return -1;
        }
    }

    public int getRegionIdByName(String regionName) {
        try {
            Integer result = jdbcTemplate.queryForObject("SELECT Id from regions where name = ?", Integer.class, regionName);
            return result;

        } catch (DataAccessException e) {
            return -1;
        }

    }

    public int addCountry(Country country) {
        int id = getRegionIdByName(country.getRegion());

        if (id == -1) {
            return -1;
        }

        String sql = "INSERT INTO countries (" +
                "name,  capital, population, flag, regionId) " +
                "VALUES (?, ?, ?, ?, ?)";

        return jdbcTemplate.update(sql, country.getName(), country.getCapital(), country.getPopulation(), country.getFlag(), id);
    }
}
