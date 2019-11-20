*****************************************************************
** Find nonnumeric characters within a string variable.		   **
** Suitable to be used after an unsuccesful destring command.  **
** Author: Cauane Blumenberg - www.cauane.com				   **
** Version 1.0 - 18/05/2018									   **
*****************************************************************

program findnonnumeric
version 15.1
syntax varname

quietly {
	tempvar wrongINT
	generate `wrongINT' = ustrregexm(`varlist', "[\x2F\x00-\x2D\x3A-\x7F]+|(\.+\S+\.+)")
	
	tempvar numberOfErrors
	count if `wrongINT' == 1
	g `numberOfErrors' = `r(N)'
	
	if (`numberOfErrors' == 0) {
		noisily display "There are no observations containing nonnumeric characters"
	}
	else {	
		noisily display "These are the observations containing nonnumeric characters"
		noisily list `varlist' if `wrongINT' == 1
	}
}
end
