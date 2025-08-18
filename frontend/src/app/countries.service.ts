import { inject, Injectable } from '@angular/core';
import { HttpClient, HttpErrorResponse } from '@angular/common/http';
import { catchError, Observable, switchMap, throwError } from 'rxjs';
import { Country, Region } from './types';

@Injectable({
  providedIn: 'root',
})
export class CountriesService {
  private httpClient: HttpClient = inject(HttpClient);
  private URL: string = 'http://localhost:8080';

  // pipe pozwala łańcuchowo przetwarzać dane zanim trafią do subskrybenta
  getCountriesFromDatabase(): Observable<Country[]> {
    return this.httpClient.get<Country[]>(`${this.URL}/countries`).pipe(
      catchError((error: HttpErrorResponse) => {
        console.log(error.message);
        return throwError(error.message);
      })
    );
  }

  getRegionsFromDatabase(): Observable<Region[]> {
    return this.httpClient.get<Region[]>(`${this.URL}/regions`).pipe(
      catchError((error: HttpErrorResponse) => {
        console.log(error.message);
        return throwError(error.message);
      })
    );
  }
}
