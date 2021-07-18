clear all
include "config.do"

/* create directories if they don't exist*/
capture mkdir "$outputdata"
capture mkdir "$results"
capture mkdir "$logdir"

/* install any packages locally */
capture mkdir "$adobase"
sysdir set PERSONAL "$adobase/ado/personal"
sysdir set PLUS     "$adobase/ado/plus"
sysdir set SITE     "$adobase/ado/site"

program main
	* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	* Add required packages from SSC to this list
	* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	local ssc_packages latab ///
	    
    if !missing("`ssc_packages'") {
        foreach pkg in `ssc_packages' {
			capture which `pkg'
			if _rc == 111 {			
				dis "Installing `pkg'"
                ssc install `pkg', replace
			}
        }
    }

end

main
