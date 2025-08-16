package com.example.backend;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController()
@RequestMapping("/countries")
public class Controller {

    @Autowired
    private CountriesRepository countriesRepository;

    @GetMapping("")
    public ResponseEntity<List<Country>> getCountries() {
        List<Country> countries = countriesRepository.getAllCountries();

        if (countries.isEmpty()) {
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        }
        return ResponseEntity.ok(countries);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Country> getCountryById(@PathVariable int id) {
        Country country = countriesRepository.getCountryById(id);
        if (country == null) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        return ResponseEntity.ok(country);
    }


    @PostMapping()
    public ResponseEntity<Void> addCountry(@RequestBody Country country) {
        int affectedRows = countriesRepository.addCountry(country);
        if  (affectedRows == -1)
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        if (affectedRows > 0)
            return new ResponseEntity<>(HttpStatus.CREATED);

        return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
    }

    @PostMapping("/list")
    public ResponseEntity<Void> addCountries(@RequestBody List<Country> countries) {
        if (countriesRepository.addCountries(countries) > 0)
            return new ResponseEntity<>(HttpStatus.CREATED);

        return new ResponseEntity<>(HttpStatus.BAD_REQUEST);

    }
}

