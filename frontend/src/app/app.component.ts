import { Component, inject } from '@angular/core';
import { CountriesService } from './countries.service';
import { Country, Region } from './types';
import { HttpErrorResponse } from '@angular/common/http';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss'],
})
export class AppComponent {
  private countriesService: CountriesService = inject(CountriesService);
  countries: Country[] = [];
  regions: Region[] = [];

  ngOnInit() {
    this.countriesService.getCountriesFromDatabase().subscribe({
      next: (countries: Country[]) => (this.countries = countries),
      error: (error: HttpErrorResponse) => {
        console.log(error.message);
        return (this.countries = []);
      },
    });

    this.countriesService.getRegionsFromDatabase().subscribe({
      next: (regions: Region[]) => (this.regions = regions),
      error: (error: HttpErrorResponse) => {
        console.log(error.message);
        return (this.regions = []);
      },
    });
  }
}
