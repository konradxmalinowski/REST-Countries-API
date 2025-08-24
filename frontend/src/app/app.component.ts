import { Component, inject } from '@angular/core';
import { CountriesService } from './services/countries.service';
import { Country, ModeValue, Region, RegionValue } from './types';
import { HttpErrorResponse } from '@angular/common/http';
import { Mode } from './services/mode.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss'],
})
export class AppComponent {
  private countriesService: CountriesService = inject(CountriesService);
  countries: Country[] = [];
  countriesCopy: Country[] = [];
  regions: Region[] = [];

  private modeService: Mode = inject(Mode);
  mode!: ModeValue;

  ngOnInit() {
    this.getCountries();
    this.getRegions();
    this.getMode();
  }

  getCountries(): void {
    this.countriesService.getCountriesFromDatabase().subscribe({
      next: (countries: Country[]) => {
        this.countries = countries;
        this.countriesCopy = this.countries;
      },
      error: (error: HttpErrorResponse) => {
        console.log(error.message);
        this.countries = [];
        this.countriesCopy = [];
      },
    });
  }

  getRegions(): void {
    this.countriesService.getRegionsFromDatabase().subscribe({
      next: (regions: Region[]) => (this.regions = regions),
      error: (error: HttpErrorResponse) => {
        console.log(error.message);
        this.regions = [];
      },
    });
  }

  getMode(): void {
    this.mode = this.modeService.getMode();
  }

  toggleMode(): void {
    this.mode = this.modeService.toggleMode(this.mode);
  }

  handleSelect(region: RegionValue): void {
    this.countries = [...this.countriesCopy];
    if (region === RegionValue.Default) {
      return;
    }
    this.countries = this.countries.filter(
      (country) => country.region === region
    );
  }

  searchForCountry(letters: string): void {
    this.countries = [...this.countriesCopy];
    this.countries = this.countries.filter((country: Country) =>
      country.name.toLowerCase().includes(letters)
    );
    console.log(letters);
  }
}
