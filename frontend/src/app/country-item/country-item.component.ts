import { Component, Input } from '@angular/core';
import { Country } from '../types';
import { MatDialog } from '@angular/material/dialog';
import { CountryDialogComponent } from '../country-dialog/country-dialog.component';

@Component({
  selector: 'app-country-item',
  templateUrl: './country-item.component.html',
  styleUrls: ['./country-item.component.scss'],
})
export class CountryItemComponent {
  @Input() country!: Country;
  constructor(private dialog: MatDialog) {}

  openDialog(): void {
    this.dialog.open(CountryDialogComponent, {
      data: { country: this.country },
      width: '400px',
      maxHeight: '80vh',
      disableClose: false,
      autoFocus: false,
      hasBackdrop: true,
      backdropClass: 'dialog-backdrop',
      panelClass: 'country-dialog-panel',
      position: { top: '50px' },
    });
  }
}
