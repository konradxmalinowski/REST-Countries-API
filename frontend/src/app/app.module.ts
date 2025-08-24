import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { CountryItemComponent } from './country-item/country-item.component';
import { CountryItemsComponent } from './country-items/country-items.component';
import { SearchInputComponent } from './search-input/search-input.component';
import { HttpClientModule } from '@angular/common/http';
import { FilterInputComponent } from './filter-input/filter-input.component';
import { FormsModule } from '@angular/forms';
import { MatDialogModule } from '@angular/material/dialog';
import { MatButtonModule } from '@angular/material/button';
import { MatCardModule } from '@angular/material/card';
import { MatIconModule } from '@angular/material/icon';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';

import { CountryDialogComponent } from './country-dialog/country-dialog.component';

@NgModule({
  declarations: [
    AppComponent,
    CountryItemComponent,
    CountryItemsComponent,
    SearchInputComponent,
    FilterInputComponent,
    CountryDialogComponent,
  ],
  imports: [
    BrowserModule,
    HttpClientModule,
    FormsModule,
    BrowserAnimationsModule,
    MatDialogModule,
    MatButtonModule,
    MatCardModule,
    MatIconModule,
  ],
  providers: [],
  bootstrap: [AppComponent],
})
export class AppModule {}
