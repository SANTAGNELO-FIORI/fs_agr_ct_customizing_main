using fs_agr_ct_customizing_mainSrv as service from '../../srv/service';
using from '../annotations';

annotate service.IndicatorReference with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : ESALQ,
            Label : 'ESALQ',

            $Type : 'UI.DataField',
            Value : dateReferencia,
            Label : 'dateReferencia',
        },
        {
            $Type : 'UI.DataField',
            Value : grossPrice,
        },
        {
            $Type : 'UI.DataField',
            Value : netPrice,
        },
    ]
);

annotate service.IndicatorReference with {
    dateReferencia @Common.FieldControl : #Mandatory
};

