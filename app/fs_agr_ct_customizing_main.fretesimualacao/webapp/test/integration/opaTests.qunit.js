sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'fsagrctcustomizingmain/fretesimualacao/test/integration/FirstJourney',
		'fsagrctcustomizingmain/fretesimualacao/test/integration/pages/FreightList',
		'fsagrctcustomizingmain/fretesimualacao/test/integration/pages/FreightObjectPage'
    ],
    function(JourneyRunner, opaJourney, FreightList, FreightObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('fsagrctcustomizingmain/fretesimualacao') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheFreightList: FreightList,
					onTheFreightObjectPage: FreightObjectPage
                }
            },
            opaJourney.run
        );
    }
);