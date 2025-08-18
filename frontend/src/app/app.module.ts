import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { CountryItemComponent } from './country-item/country-item.component';
import { CountryItemsComponent } from './country-items/country-items.component';
import { InputComponent } from './input/input.component';
import { SearchInputComponent } from './search-input/search-input.component';
import { HttpClientModule } from '@angular/common/http';
import { FilterInputComponent } from './filter-input/filter-input.component';

@NgModule({
  declarations: [
    AppComponent,
    CountryItemComponent,
    CountryItemsComponent,
    InputComponent,
    SearchInputComponent,
    FilterInputComponent,
  ],
  imports: [BrowserModule, HttpClientModule],
  providers: [],
  bootstrap: [AppComponent],
})
export class AppModule {}
