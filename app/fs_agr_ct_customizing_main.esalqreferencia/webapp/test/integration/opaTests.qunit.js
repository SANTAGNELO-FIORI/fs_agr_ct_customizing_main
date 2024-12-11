sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'fsagrctcustomizingmain/esalqreferencia/test/integration/FirstJourney',
		'fsagrctcustomizingmain/esalqreferencia/test/integration/pages/IndicatorReferenceList',
		'fsagrctcustomizingmain/esalqreferencia/test/integration/pages/IndicatorReferenceObjectPage'
    ],
    function(JourneyRunner, opaJourney, IndicatorReferenceList, IndicatorReferenceObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('fsagrctcustomizingmain/esalqreferencia') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheIndicatorReferenceList: IndicatorReferenceList,
					onTheIndicatorReferenceObjectPage: IndicatorReferenceObjectPage
                }
            },
            opaJourney.run
        );
    }
);