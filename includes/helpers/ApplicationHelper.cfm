<!--- All methods in this helper will be available in all handlers,views & layouts --->
<cfscript>
	public string function correctedElixirPath(  
        required string fileName
    ) 
    output="false" 
    hint="finds the versioned path for an asset"
    {
        var templateCache       = getCache( "template" );
		var includesLocation = controller.getSetting( "IncludesConvention", true );
        var filePath = expandPath( "/#includesLocation#/rev-manifest.json" );


        if ( ! fileExists( filePath ) ) {
            return fileName;
        }

        var fileContents = templateCache.getOrSet( 
            "elixirManifest2", 
            function(){ 
                return fileRead( filePath ); 
            } 
        );
        if ( ! isJSON( fileContents ) ) {
            return href;
        }

        var json = deserializeJSON( fileContents );

        if ( ! structKeyExists( json, fileName ) ) {
            return fileName;
        }

        return "#json[ fileName ]#";

	}
</cfscript>