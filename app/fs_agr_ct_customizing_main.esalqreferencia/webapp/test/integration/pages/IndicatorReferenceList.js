sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'fsagrctcustomizingmain.esalqreferencia',
            componentId: 'IndicatorReferenceList',
            contextPath: '/IndicatorReference'
        },
        CustomPageDefinitions
    );
});