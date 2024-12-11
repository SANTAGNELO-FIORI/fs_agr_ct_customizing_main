sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'fsagrctcustomizingmain/impostosimula/test/integration/FirstJourney',
		'fsagrctcustomizingmain/impostosimula/test/integration/pages/TaxesSimulationList',
		'fsagrctcustomizingmain/impostosimula/test/integration/pages/TaxesSimulationObjectPage'
    ],
    function(JourneyRunner, opaJourney, TaxesSimulationList, TaxesSimulationObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('fsagrctcustomizingmain/impostosimula') + '/index.html'
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