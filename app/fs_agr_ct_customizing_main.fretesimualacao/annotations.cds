using fs_agr_ct_customizing_mainSrv as service from '../../srv/service';
annotate service.Freight with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'placeOfOrigin',
                Value : placeOfOrigin,
            },
            {
                $Type : 'UI.DataField',
                Label : 'pickUpLocation',
                Value : pickUpLocation,
            },
            {
                $Type : 'UI.DataField',
                Label : 'region',
                Value : region,
            },
            {
                $Type : 'UI.DataField',
                Label : 'modal',
                Value : modal,
            },
            {
                $Type : 'UI.DataField',
                Label : 'logisticsCost',
                Value : logisticsCost,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'placeOfOrigin',
            Value : placeOfOrigin,
        },
        {
            $Type : 'UI.DataField',
            Label : 'pickUpLocation',
            Value : pickUpLocation,
        },
        {
            $Type : 'UI.DataField',
            Label : 'region',
            Value : region,
        },
        {
            $Type : 'UI.DataField',
            Label : 'modal',
            Value : modal,
        },
        {
            $Type : 'UI.DataField',
            Label : 'logisticsCost',
            Value : logisticsCost,
        },
    ],
);

