import { readFile, writeFile } from 'fs/promises';

type Country = {
  name: string;
  topLevelDomain: string[];
  alpha2Code: string;
  alpha3Code: string;
  callingCodes: string[];
  capital: string;
  altSpellings: string[];
  subregion: string;
  region: string;
  population: number;
  latlng: number[];
  demonym: string;
  area: number;
  timezones: string[];
  borders: string[];
  nativeName: string;
  numericCode: string;
  flags: {
    svg: string;
    png: string;
  };
  currencies: {
    code: string;
    name: string;
    symbol: string;
  }[];
  languages: {
    iso639_1: string;
    iso639_2: string;
    name: string;
    nativeName: string;
  }[];
  translations: {
    [key: string]: string;
  };
  flag: string;
  regionalBlocs: {
    acronym: string;
    name: string;
  }[];
  cioc: string;
  independent: boolean;
};

async function getJson() {
  try {
    const response = await readFile('./data.json', 'utf-8');
    const data: Country[] = await JSON.parse(response);

    return data.map((country: Country) => ({
      name: country.name,
      capital: country.capital,
      flag: country.flag,
      population: country.population,
      region: country.region,
    }));
  } catch (error) {
    if (error instanceof Error) {
      console.log(error.message);
      return;
    }

    console.log('Failed to get json');
  }
}

async function saveTransformedData() {
  const data = await getJson();

  if (!data) {
    throw new Error('Failed to get json');
  }

  try {
    await writeFile('./data-transformed.json', JSON.stringify(data), 'utf-8');
  } catch (error) {
    if (error instanceof Error) {
      console.log(error.message);
      return;
    }

    console.log('Failed to write json');
  }
}

saveTransformedData();
