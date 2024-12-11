sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'fsagrctcustomizingmain/customizing/test/integration/FirstJourney',
		'fsagrctcustomizingmain/customizing/test/integration/pages/IndicatorIndexList',
		'fsagrctcustomizingmain/customizing/test/integration/pages/IndicatorIndexObjectPage'
    ],
    function(JourneyRunner, opaJourney, IndicatorIndexList, IndicatorIndexObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('fsagrctcustomizingmain/customizing') + '/index.html'
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