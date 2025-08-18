package com.example.backend;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController()
@RequestMapping("")
public class Controller {

    @Autowired
    private CountriesRepository countriesRepository;

    @GetMapping("/countries")
    public ResponseEntity<List<Country>> getCountries() {
        try {
            List<Country> countries = countriesRepository.getAllCountries();

            if (countries.isEmpty()) {
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }
            return ResponseEntity.ok(countries);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @GetMapping("/countries/{id}")
    public ResponseEntity<Country> getCountryById(@PathVariable int id) {
        try {
            Country country = countriesRepository.getCountryById(id);
            if (country == null) {
                return new ResponseEntity<>(HttpStatus.NOT_FOUND);
            }
            return ResponseEntity.ok(country);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }

    }

    @PostMapping("/countries")
    public ResponseEntity<Country> addCountry(@RequestBody Country country) {
        try {
            int affectedRows = countriesRepository.addCountry(country);
            if (affectedRows == 0) {
                return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
            }
            else if (affectedRows == -1) {
                return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
            }
            return new ResponseEntity<Country>(country, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @GetMapping("/regions")
    public ResponseEntity<List<Region>> getRegions() {
        try {
            List<Region> regions = countriesRepository.getAllRegions();
            if (regions.isEmpty()) {
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }
            return ResponseEntity.ok(regions);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }

    }

    @GetMapping("/regions/{id}")
    public ResponseEntity<Region> getRegionById(@PathVariable int id) {
        try {
            Region region = countriesRepository.getRegionById(id);
            if (region == null) {
                return new ResponseEntity<>(HttpStatus.NOT_FOUND);
            }
            return ResponseEntity.ok(region);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @PostMapping("/regions")
    public ResponseEntity<Void> addRegion(@RequestBody Region region) {
        int affectedRows = countriesRepository.addRegion(region);
        if  (affectedRows == -1)
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        if (affectedRows > 0)
            return new ResponseEntity<>(HttpStatus.CREATED);

        return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
    }

//    @GetMapping("/{region}/countries")
//    public ResponseEntity<List<Country>> getCountriesByRegion(@PathVariable String region) {
//
//    }
}

