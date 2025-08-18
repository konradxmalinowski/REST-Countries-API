import { Component, Input } from '@angular/core';
import { Country } from '../types';

@Component({
  selector: 'app-country-item',
  templateUrl: './country-item.component.html',
  styleUrls: ['./country-item.component.scss'],
})
export class CountryItemComponent {
  @Input() country!: Country;
}
