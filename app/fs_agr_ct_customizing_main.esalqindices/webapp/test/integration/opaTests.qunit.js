sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'fsagrctcustomizingmain/esalqindices/test/integration/FirstJourney',
		'fsagrctcustomizingmain/esalqindices/test/integration/pages/IndicatorIndexList',
		'fsagrctcustomizingmain/esalqindices/test/integration/pages/IndicatorIndexObjectPage'
    ],
    function(JourneyRunner, opaJourney, IndicatorIndexList, IndicatorIndexObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('fsagrctcustomizingmain/esalqindices') + '/index.html'
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