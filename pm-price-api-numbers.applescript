--Version 1.1
set arrlist to {}

tell application "Finder"
	-- define the path of all handler addresses
	set mypath to ((container of (path to me) as string) & "Function:JSONhelper.scpt") as alias
	set myKey to ((container of (path to me) as string) & "Function:apiKey.scpt") as alias
	--define the path of the numbers spreadsheet
	set chosenDocumentFile to POSIX path of (container of (path to me) as alias) & "metalprices.numbers"
end tell

set myOtherScript to load script myKey
set symbol to symbol() of myOtherScript
set apiKey to apiKey() of myOtherScript


set myOtherScript to load script mypath
set loadscript to JSONhelper(symbol, apiKey) of myOtherScript

set arrlist to the result
log arrlist

tell application "Numbers"
	try

		open the chosenDocumentFile
		
		try
			
			if not (exists document 1) then error number 1000
			tell document 1
				set selectedTable to table 1 of sheet "Rates"
				try
				on error
					error number 1001
				end try
				
				tell selectedTable
					set cntRow to count row
					set cntCol to count column
					set curRow to 2
					set timeConvert to (date "Thursday, 1 January 1970 at 8:00:00 AM") + (timestamp of item 1 of arrlist) / 86400 * days
					repeat with i from 1 to count of arrlist
						set value of cell curRow of column 1 to metal of item i of arrlist
						set value of cell curRow of column 2 to price of item i of arrlist
						set value of cell curRow of column 3 to timeConvert
						set value of cell curRow of column 4 to prev_close_price of item i of arrlist
						set value of cell curRow of column 5 to open_price of item i of arrlist
						set value of cell curRow of column 6 to low_price of item i of arrlist
						set value of cell curRow of column 7 to high_price of item i of arrlist
						set value of cell curRow of column 8 to price_gram_24k of item i of arrlist
						set value of cell curRow of column 9 to price_gram_22k of item i of arrlist
						set value of cell curRow of column 10 to price_gram_21k of item i of arrlist
						set value of cell curRow of column 11 to price_gram_18k of item i of arrlist
						set curRow to curRow + 1
						
						if cntRow < curRow then
							-- store the address of the current non-header cell area
							set tableRangeAddress to (name of cell 2 of row 2) & ":" & (name of last cell)
							-- add a row to the end of the table
							add row below last row
							set cntRow to cntRow + 1
						end if
						
					end repeat
					
				end tell
			end tell
			
		on error errorMessage number errorNumber
			if errorNumber is 1000 then
				set alertString to "MISSING RESOURCE"
				set errorMessage to "Please create or open a document before running this script."
			else if errorNumber is 1001 then
				set alertString to "SELECTION ERROR"
				set errorMessage to "Please select a table before running this script."
			else
				set alertString to "EXECUTION ERROR"
			end if
			display alert alertString message errorMessage buttons {"Cancel"}
			error number -128
		end try
	end try
end tell
