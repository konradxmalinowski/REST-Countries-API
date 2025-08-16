import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CountryItemsComponent } from './country-items.component';

describe('CountryItemsComponent', () => {
  let component: CountryItemsComponent;
  let fixture: ComponentFixture<CountryItemsComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ CountryItemsComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(CountryItemsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
