sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'fsagrctcustomizingmain/impostosimulacao/test/integration/FirstJourney',
		'fsagrctcustomizingmain/impostosimulacao/test/integration/pages/TaxesSimulationList',
		'fsagrctcustomizingmain/impostosimulacao/test/integration/pages/TaxesSimulationObjectPage'
    ],
    function(JourneyRunner, opaJourney, TaxesSimulationList, TaxesSimulationObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('fsagrctcustomizingmain/impostosimulacao') + '/index.html'
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