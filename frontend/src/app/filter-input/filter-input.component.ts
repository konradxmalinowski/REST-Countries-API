import { Component, EventEmitter, Input, Output } from '@angular/core';
import { Region, RegionValue } from '../types';

@Component({
  selector: 'app-filter-input',
  templateUrl: './filter-input.component.html',
  styleUrls: ['./filter-input.component.scss'],
})
export class FilterInputComponent {
  @Input() regions!: Region[];
  @Output() select = new EventEmitter<RegionValue>();

  selectedRegion: RegionValue = RegionValue.Default;

  selectRegion(region: RegionValue) {
    this.select.emit(region);
  }
}
