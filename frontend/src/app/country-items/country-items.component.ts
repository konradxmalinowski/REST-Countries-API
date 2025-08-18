import { Component, Input } from '@angular/core';
import { Country } from '../types';

@Component({
  selector: 'app-country-items',
  templateUrl: './country-items.component.html',
  styleUrls: ['./country-items.component.scss'],
})
export class CountryItemsComponent {
  @Input() countries!: Country[];
}
