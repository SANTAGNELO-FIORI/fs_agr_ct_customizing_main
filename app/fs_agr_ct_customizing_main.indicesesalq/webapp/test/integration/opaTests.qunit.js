sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'fsagrctcustomizingmain/indicesesalq/test/integration/FirstJourney',
		'fsagrctcustomizingmain/indicesesalq/test/integration/pages/IndicatorIndexList',
		'fsagrctcustomizingmain/indicesesalq/test/integration/pages/IndicatorIndexObjectPage'
    ],
    function(JourneyRunner, opaJourney, IndicatorIndexList, IndicatorIndexObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('fsagrctcustomizingmain/indicesesalq') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheIndicatorIndexList: IndicatorIndexList,
					onTheIndicatorIndexObjectPage: IndicatorIndexObjectPage
                }
            },
            opaJourney.run
        );
    }
);