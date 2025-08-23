import { Injectable } from '@angular/core';
import { ModeValue } from '../types';

@Injectable({
  providedIn: 'root',
})
export class Mode {
  private mode: ModeValue = ModeValue.LIGHT;

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
