using { fs_agr_ct_customizing_main as my } from '../db/schema.cds';

@path: '/service/fs_agr_ct_customizing_main'
@requires: 'authenticated-user'
service fs_agr_ct_customizing_mainSrv {
  @odata.draft.enabled
  entity IndicatorIndex as projection on my.IndicatorIndex;
  @odata.draft.enabled
  entity IndicatorReference as projection on my.IndicatorReference;
  @odata.draft.enabled
  entity TaxesSimulation as projection on my.TaxesSimulation;
}