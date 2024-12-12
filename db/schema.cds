namespace fs_agr_ct_customizing_main;

using
{
    cuid,
    Currency
}
from '@sap/cds/common';

entity IndicatorIndex : cuid
{
    ESALQ : String(11)
    @mandatory;
    dateReferencia : Date
        @mandatory;
    week : String(2)
        @mandatory
        @Core.Description : 'Semana';
    grossPrice : Decimal(10,2)
        @Core.Description : 'Preço Bruto';
    Currency : Currency;
    netPrice : Decimal(10,2)
        @Core.Description : 'Preço Liquido';
}

annotate IndicatorIndex with @assert.unique :
{
    dateReferencia : [ dateReferencia ],
};

entity IndicatorReference : cuid
{
    ESALQ : String(11)
    @mandatory;
    dateReferencia : Date
        @mandatory
        @Core.Description : 'Data de Referencia';
    grossPrice : Decimal(10,2)
    
        @Core.Description : 'Preço Bruto';
    Currency : Currency;
    netPrice : Decimal(10,2)
        @Core.Description : 'Preço Liquido';
    
}

annotate IndicatorReference with @assert.unique :
{
    dateReferencia : [ dateReferencia ],
};

entity TaxesSimulation : cuid
{
    date : Date
        @mandatory
        @Core.Description : 'Data ';
    regionOrigem : String(2)
        @mandatory
        @Core.Description : 'Região Origem';
    regionDestine : String(2)
        @mandatory
        @Core.Description : 'Região Destino';
    material : String(40)
        @mandatory
        @Core.Description : 'Material';
    taxValuePauta : Decimal(10,2)
        @Core.Description : 'Valor Pauta';
    Currency : Currency;
    taxValueICMS : Decimal(10,2)
        @Core.Description : 'Valor ICMS';
    taxValuePISCOFINS : Decimal(10,2)
        @Core.Description : 'Valor Pis Cofins';
    prodeic : Integer
        @Core.Description : 'prodeic';
}

annotate TaxesSimulation with @assert.unique :
{
    date : [ date ],
};
