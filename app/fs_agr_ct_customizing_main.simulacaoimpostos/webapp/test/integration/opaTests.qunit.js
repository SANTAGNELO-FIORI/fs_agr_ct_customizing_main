sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'fsagrctcustomizingmain/simulacaoimpostos/test/integration/FirstJourney',
		'fsagrctcustomizingmain/simulacaoimpostos/test/integration/pages/TaxesSimulationList',
		'fsagrctcustomizingmain/simulacaoimpostos/test/integration/pages/TaxesSimulationObjectPage'
    ],
    function(JourneyRunner, opaJourney, TaxesSimulationList, TaxesSimulationObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('fsagrctcustomizingmain/simulacaoimpostos') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheTaxesSimulationList: TaxesSimulationList,
					onTheTaxesSimulationObjectPage: TaxesSimulationObjectPage
                }
            },
            opaJourney.run
        );
    }
);