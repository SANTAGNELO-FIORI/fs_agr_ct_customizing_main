using { fs_agr_ct_customizing_main as my } from '../db/schema.cds';

using
{
    cuid,
    User
}
from '@sap/cds/common';

@path : '/service/fs_agr_ct_customizing_main'
service fs_agr_ct_customizing_mainSrv
{
    @odata.draft.enabled
    entity IndicatorIndex as
        projection on my.IndicatorIndex;

    @odata.draft.enabled
    entity IndicatorReference as
        projection on my.IndicatorReference;

    @odata.draft.enabled
    entity TaxesSimulation as
        projection on my.TaxesSimulation;
}

annotate fs_agr_ct_customizing_mainSrv with @requires :
[
    'authenticated-user'
];
