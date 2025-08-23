import { Component, EventEmitter, Output } from '@angular/core';

@Component({
  selector: 'app-search-input',
  templateUrl: './search-input.component.html',
  styleUrls: ['./search-input.component.scss'],
})
export class SearchInputComponent {
  letters: string = '';
  @Output() change = new EventEmitter<string>();

  onChange(value: string) {
    this.change.emit(value.toLowerCase());
  }
}
