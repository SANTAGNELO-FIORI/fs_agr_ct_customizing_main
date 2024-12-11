namespace fs_agr_ct_customizing_main;
using { cuid, Currency } from '@sap/cds/common';

@assert.unique: { dateReferencia: [dateReferencia] }
entity IndicatorIndex : cuid {
  dateReferencia: Date @mandatory;
  week: String(2) @mandatory;
  grossPrice: Decimal(10,2);
  Currency: Currency;
  netPrice: Decimal(10,2);
}

@assert.unique: { dateReferencia: [dateReferencia] }
entity IndicatorReference : cuid {
  dateReferencia: Date @mandatory;
  grossPrice: Decimal(10,2);
  Currency: Currency;
  netPrice: Decimal(10,2);
}

@assert.unique: { date: [date] }
entity TaxesSimulation : cuid {
  date: Date @mandatory;
  regionOrigem: String(3) @mandatory;
  regionDestine: String(3) @mandatory;
  material: String(40) @mandatory;
  taxValuePauta: Decimal(10,2);
  Currency: Currency;
  taxValueICMS: Decimal(10,2);
  taxValuePISCOFINS: Decimal(10,2);
  prodeic: Integer;
}

