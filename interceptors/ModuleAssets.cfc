component{

    any function preLayout(event, rc, prc) {
        var helper = getInstance( "HTMLHelper@coldbox" );

        var handler = listLast( event.getCurrentHandler(), ":" );
        var action = event.getCurrentAction();
        var module = event.getCurrentModule();

        var basePath = "";
        if ( len( module ) ) {
            basePath &= "modules_app/#module#/";
        }
        basePath &= "includes/";
        var cssBasePath = basePath & "css/";
        var jsBasePath = basePath & "js/";

        var pathsToCheck = [];

        // CSS Path Checks
        arrayAppend( pathsToCheck, correctedElixirPath( cssBasePath & "app.css" ) );
        arrayAppend( pathsToCheck, correctedElixirPath( jsBasePath & "app.css" ) ); // for extracted Vue styles
        arrayAppend( pathsToCheck, correctedElixirPath( cssBasePath & "#handler#.css" ) );
        arrayAppend( pathsToCheck, correctedElixirPath( cssBasePath & "#handler#-#action#.css" ) );

        // JS Path Checks
        arrayAppend( pathsToCheck, correctedElixirPath( jsBasePath & "app.js" ) );
        arrayAppend( pathsToCheck, correctedElixirPath( jsBasePath & "#handler#.js" ) );
        arrayAppend( pathsToCheck, correctedElixirPath( jsBasePath & "#handler#-#action#.js" ) );

        for ( var path in pathsToCheck ) {
            if ( fileExists( expandPath( path ) ) ) {
                switch( right( path, 2 ) ){
                    case "js":
                        prc.assetBag.addJavascriptToFooter( path );
                    default:
                        prc.assetBag.addCSSToHead( path );
                }
            }
        }

        var scopedVueStyles = correctedElixirPath( "js/app.css" );
        if( fileExists( scopedVueStyles ) ){
            prc.assetBag.addCSSToHead( scopedVueStyles );
        }

        return;
    }
}