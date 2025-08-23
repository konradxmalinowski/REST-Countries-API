export type Country = {
  Id: number;
  name: string;
  capital: string;
  population: number;
  flag: string;
  region: string;
};

export type Region = {
  id: number;
  name: string;
};

export enum ModeValue {
  LIGHT = 'light',
  DARK = 'dark',
}

export enum RegionValue {
  Africa = 'Africa',
  Asia = 'Asia',
  Europe = 'Europe',
  Oceania = 'Oceania',
  Default = 'Default',
}
