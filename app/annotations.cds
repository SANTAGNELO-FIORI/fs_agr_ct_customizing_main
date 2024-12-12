using { fs_agr_ct_customizing_mainSrv } from '../srv/service.cds';

annotate fs_agr_ct_customizing_mainSrv.IndicatorIndex with @UI.HeaderInfo: { TypeName: 'Indicator Index', TypeNamePlural: 'Indicator Indexes', Title: { Value: dateReferencia } };
annotate fs_agr_ct_customizing_mainSrv.IndicatorIndex with {
  ID @UI.Hidden @Common.Text: { $value: dateReferencia, ![@UI.TextArrangement]: #TextOnly }
};
annotate fs_agr_ct_customizing_mainSrv.IndicatorIndex with @UI.Identification: [{ Value: dateReferencia }];
annotate fs_agr_ct_customizing_mainSrv.IndicatorIndex with {
  ESALQ @title: 'ESALQ';
  dateReferencia @title: 'dateReferencia';
  week @title: 'Week';
  grossPrice @title: 'Gross Price';
  netPrice @title: 'Net Price'
};

annotate fs_agr_ct_customizing_mainSrv.IndicatorIndex with {
  grossPrice @Measures.ISOCurrency: Currency_code;
  netPrice @Measures.ISOCurrency: Currency_code
};

annotate fs_agr_ct_customizing_mainSrv.IndicatorIndex with @UI.LineItem: [
 ESALQ @title: 'ESALQ';
 { $Type: 'UI.DataField', Value: dateReferencia },
 { $Type: 'UI.DataField', Value: week },
 { $Type: 'UI.DataField', Value: grossPrice },
 { $Type: 'UI.DataField', Value: netPrice }
];

annotate fs_agr_ct_customizing_mainSrv.IndicatorIndex with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
 { $Type: 'UI.DataField', Value: ESALQ},
 { $Type: 'UI.DataField', Value: dateReferencia },
 { $Type: 'UI.DataField', Value: week },
 { $Type: 'UI.DataField', Value: grossPrice },
 { $Type: 'UI.DataField', Value: netPrice }
  ]
};

annotate fs_agr_ct_customizing_mainSrv.IndicatorIndex with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate fs_agr_ct_customizing_mainSrv.IndicatorIndex with @UI.SelectionFields: [
  dateReferencia
];

annotate fs_agr_ct_customizing_mainSrv.IndicatorReference with @UI.HeaderInfo: { TypeName: 'Indicator Reference', TypeNamePlural: 'Indicator References', Title: { Value: dateReferencia } };
annotate fs_agr_ct_customizing_mainSrv.IndicatorReference with {
  ID @UI.Hidden @Common.Text: { $value: dateReferencia, ![@UI.TextArrangement]: #TextOnly }
};
annotate fs_agr_ct_customizing_mainSrv.IndicatorReference with @UI.Identification: [{ Value: dateReferencia }];
annotate fs_agr_ct_customizing_mainSrv.IndicatorReference with {
  dateReferencia @title: 'dateReference';
  grossPrice @title: 'Gross Price';
  netPrice @title: 'Net Price'
};

annotate fs_agr_ct_customizing_mainSrv.IndicatorReference with {
  grossPrice @Measures.ISOCurrency: Currency_code;
  netPrice @Measures.ISOCurrency: Currency_code
};

annotate fs_agr_ct_customizing_mainSrv.IndicatorReference with @UI.LineItem: [
 { $Type: 'UI.DataField', Value: ESALQ},
 { $Type: 'UI.DataField', Value: dateReferencia},
 { $Type: 'UI.DataField', Value: grossPrice },
 { $Type: 'UI.DataField', Value: netPrice }
];

annotate fs_agr_ct_customizing_mainSrv.IndicatorReference with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
 { $Type: 'UI.DataField', Value: dateReferencia },
 { $Type: 'UI.DataField', Value: grossPrice },
 { $Type: 'UI.DataField', Value: netPrice }
  ]
};

annotate fs_agr_ct_customizing_mainSrv.IndicatorReference with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate fs_agr_ct_customizing_mainSrv.IndicatorReference with @UI.SelectionFields: [
  dateReferencia
];

annotate fs_agr_ct_customizing_mainSrv.TaxesSimulation with @UI.HeaderInfo: { TypeName: 'Taxes Simulation', TypeNamePlural: 'Taxes Simulations', Title: { Value: date } };
annotate fs_agr_ct_customizing_mainSrv.TaxesSimulation with {
  ID @UI.Hidden @Common.Text: { $value: date, ![@UI.TextArrangement]: #TextOnly }
};
annotate fs_agr_ct_customizing_mainSrv.TaxesSimulation with @UI.Identification: [{ Value: date }];
annotate fs_agr_ct_customizing_mainSrv.TaxesSimulation with {
  date @title: 'Date';
  regionOrigem @title: 'Region Origem';
  regionDestine @title: 'Region Destine';
  material @title: 'Material';
  taxValuePauta @title: 'Tax Value Pauta';
  taxValueICMS @title: 'Tax Value ICMS';
  taxValuePISCOFINS @title: 'Tax Value PISCOFINS';
  prodeic @title: 'PRODEIC'
};

annotate fs_agr_ct_customizing_mainSrv.TaxesSimulation with {
  taxValuePauta @Measures.ISOCurrency: Currency_code;
  taxValueICMS @Measures.ISOCurrency: Currency_code;
  taxValuePISCOFINS @Measures.ISOCurrency: Currency_code
};

annotate fs_agr_ct_customizing_mainSrv.TaxesSimulation with @UI.LineItem: [
 { $Type: 'UI.DataField', Value: date },
 { $Type: 'UI.DataField', Value: regionOrigem },
 { $Type: 'UI.DataField', Value: regionDestine },
 { $Type: 'UI.DataField', Value: material },
 { $Type: 'UI.DataField', Value: taxValuePauta },
 { $Type: 'UI.DataField', Value: taxValueICMS },
 { $Type: 'UI.DataField', Value: taxValuePISCOFINS },
 { $Type: 'UI.DataField', Value: prodeic }
];

annotate fs_agr_ct_customizing_mainSrv.TaxesSimulation with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
 { $Type: 'UI.DataField', Value: date },
 { $Type: 'UI.DataField', Value: regionOrigem },
 { $Type: 'UI.DataField', Value: regionDestine },
 { $Type: 'UI.DataField', Value: material },
 { $Type: 'UI.DataField', Value: taxValuePauta },
 { $Type: 'UI.DataField', Value: taxValueICMS },
 { $Type: 'UI.DataField', Value: taxValuePISCOFINS },
 { $Type: 'UI.DataField', Value: prodeic }
  ]
};

annotate fs_agr_ct_customizing_mainSrv.TaxesSimulation with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate fs_agr_ct_customizing_mainSrv.TaxesSimulation with @UI.SelectionFields: [
  date
];

