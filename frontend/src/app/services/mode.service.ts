import { Injectable } from '@angular/core';
import { ModeValue } from '../types';

@Injectable({
  providedIn: 'root',
})
export class Mode {
  private mode!: ModeValue;

  constructor() {
    const stateFromLocalStorage: ModeValue =
      (localStorage.getItem('mode') as ModeValue) || null;
    if (stateFromLocalStorage && stateFromLocalStorage !== this.mode) {
      this.setMode(stateFromLocalStorage);
    } else localStorage.setItem('mode', this.mode);
  }

  setMode(newMode: ModeValue): void {
    localStorage.setItem('mode', newMode);
    this.mode = newMode;

    if (newMode === ModeValue.DARK) {
      document.body.classList.add(`dark-mode`);
      document.body.classList.remove(`light-mode`);
    } else {
      document.body.classList.remove(`dark-mode`);
      document.body.classList.add(`light-mode`);
    }
  }

  getMode(): ModeValue {
    return this.mode;
  }

  toggleMode(currentMode: ModeValue) {
    const newValue: ModeValue =
      currentMode === ModeValue.LIGHT ? ModeValue.DARK : ModeValue.LIGHT;
    this.setMode(newValue);
    localStorage.setItem('mode', newValue);

    return newValue;
  }
}
