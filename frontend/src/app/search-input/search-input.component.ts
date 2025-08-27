import { Component, EventEmitter, Output } from '@angular/core';

@Component({
  selector: 'app-search-input',
  templateUrl: './search-input.component.html',
  styleUrls: ['./search-input.component.scss'],
})
export class SearchInputComponent {
  letters: string = '';
  @Output() onSearch = new EventEmitter<string>();

  onChange() {
    this.onSearch.emit(this.letters);
  }
}
