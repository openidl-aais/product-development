SELECT * FROM GD_PC_SERIES_REVISION spsr 


SELECT * FROM GD_PC_FORM

SELECT count(*) FROM GD_PC_PUBLICATION gpp 

SELECT count(*) FROM GD_PC_PUBLICATION_ASSIGNMENT gppa 

SELECT * FROM GD_PC_FORM_SERIES gpfs 

SELECT gfl.REPORT_DESCRIPTION, gfl.LINE_CODE, gpfs.NAME 
FROM GD_PC_FORM_SERIES_FD_LINE gpfsfl 
JOIN GD_FD_LINE gfl ON gfl.ID = gpfsfl.F_LINE 
JOIN GD_PC_FORM_SERIES gpfs ON gpfs.ID = gpfsfl.F_FORM_SERIES 
LEFT JOIN GD_PC_LINE_OF_BUSINESS gplob ON gplob.ID = gpfs.LINE_ID 

-- getting all content for line, state and date
-- get manual revision for line and state

SELECT pub.NAME AS publicationName, pubtype.NAME AS publicationType, state.ABBREVIATION AS state, form.PC_NUMBER AS formNumber
FROM GD_PC_PUBLICATION pub
JOIN GD_PC_PUBLICATION_PUBLICATIO pubpubtype ON pubpubtype.PUBLICATION_ID = pub.PUBLICATION_ID 
JOIN GD_PC_PUBLICATION_TYPE pubtype ON pubtype.PUBLICATION_TYPE_ID = pubpubtype.PUBLICATION_TYPE_ID 
JOIN GD_PC_PUBLICATION_ASSIGNMENT pubass ON pubass.PUBLICATION_ID = pub.PUBLICATION_ID 
JOIN GD_PC_FORM form ON form.PUBLICATION_ID = pub.PUBLICATION_ID 
JOIN GD_PC_STATE state ON state.STATE_ID = pubass.STATE_ID 
JOIN GD_PC_LINE_OF_BUSINESS lob ON pub
JOIN GD_PC_LINE_VERSION lineVersion ON lineVersion.LINE_VERSION_ID = pubass.LINE_VERSION_ID 
ORDER BY state, formNumber, publicationType


-- lines and formeditions
SELECT gplob.NAME AS lob, gpfs.NAME AS series, gfl.LINE_CODE AS line_code
FROM GD_PC_FORM_SERIES_FD_LINE gpfsfl 
LEFT JOIN GD_PC_FORM_SERIES gpfs ON gpfs.ID = gpfsfl.F_FORM_SERIES 
LEFT JOIN GD_FD_LINE gfl ON gfl.ID = gpfsfl.F_LINE 
LEFT JOIN GD_PC_LINE_OF_BUSINESS gplob ON gplob.ID = gpfs.F_LINE_OF_BUSINESS 
ORDER BY lob, series, line_code

SELECT * FROM GD_PC_FORM_SERIES_FD_LINE gpfsfl ORDER BY F_FORM_SERIES, F_LINE  

-- forms for form series
SELECT DISTINCT gplob.NAME AS lob, gfl.LINE_CODE AS lineCode, gpfs.NAME AS series, state.ABBREVIATION AS state, gpf.PC_NUMBER AS formNumber, gfff.EFFECTIVE_DATE AS effectiveDate
FROM GD_PC_FORM_SERIES gpfs 
JOIN GD_PC_FORM_SERIES_FD_LINE gpfsfl ON gpfsfl.F_FORM_SERIES = gpfs.ID 
JOIN GD_FD_LINE gfl ON gfl.ID = gpfsfl.F_LINE 
JOIN GD_PC_LINE_OF_BUSINESS gplob ON gplob.ID = gpfs.F_LINE_OF_BUSINESS 
LEFT JOIN GD_FD_FORM_FILING gfff ON gfff.LINE = gfl.LINE_CODE 
LEFT JOIN GD_PC_STATE state ON state.ABBREVIATION  = gfff.STATE  
LEFT JOIN GD_PC_FORM gpf ON (gfff.FORM_NAME  || ' ' || gfff.EDITION) = gpf.PC_NUMBER 
WHERE gplob.NAME = 'Artisans'
ORDER BY lob, series, state, formNumber


-- forms for form series
SELECT gplob.NAME AS lob, gfl.LINE_CODE AS lineCode, gpfs.NAME AS series, state.ABBREVIATION AS state, gpf.PC_NUMBER AS formNumber
FROM GD_PC_FORM_SERIES gpfs 
JOIN GD_PC_FORM_SERIES_FD_LINE gpfsfl ON gpfsfl.F_FORM_SERIES = gpfs.ID 
JOIN GD_FD_LINE gfl ON gfl.ID = gpfsfl.F_LINE 
LEFT JOIN GD_PC_LINE_OF_BUSINESS gplob ON gplob.ID = gpfs.F_LINE_OF_BUSINESS 
LEFT JOIN GD_PC_LINE_VERSION gplv ON gplv.LINE_ID = gplob.LINE_ID 
LEFT JOIN GD_PC_PUBLICATION_ASSIGNMENT pubass ON pubass.LINE_VERSION_ID = gplv.LINE_ID 
LEFT JOIN GD_PC_STATE state ON state.STATE_ID = pubass.STATE_ID 
WHERE gplob.NAME = 'Artisans'
ORDER BY lob, series, state, formNumber

-- forms for form series
SELECT gfff.*
FROM GD_PC_FORM_SERIES gpfs 
JOIN GD_PC_FORM_SERIES_FD_LINE gpfsfl ON gpfsfl.F_FORM_SERIES = gpfs.ID 
JOIN GD_FD_LINE gfl ON gfl.ID = gpfsfl.F_LINE 
JOIN GD_PC_LINE_OF_BUSINESS gplob ON gplob.ID = gpfs.F_LINE_OF_BUSINESS 
LEFT JOIN GD_FD_FORM_FILING gfff ON gfff.LINE = gfl.LINE_CODE 
LEFT JOIN GD_PC_STATE state ON state.ABBREVIATION  = gfff.STATE  
LEFT JOIN GD_PC_FORM gpf ON (gfff.FORM_NAME  || ' ' || gfff.EDITION) = gpf.PC_NUMBER 
WHERE gplob.NAME = 'Artisans'

ORDER BY lob, series, state, formNumber


-- find all filings for a formNumber
SELECT gfff.LINE AS line, gfff.FORM_NAME  || ' ' || gfff.EDITION AS form_number
FROM GD_FD_FORM_FILING gfff 


SELECT count(*)
FROM PDP_DATA_LOCATION.GD_PC_PUBLICATION_ASSIGNMENT pubass
left join PDP_DATA_LOCATION.GD_PC_PUBLICATION pub on pub.PUBLICATION_ID = pubass.PUBLICATION_ID
left join PDP_DATA_LOCATION.GD_PC_STATE state on pubass.STATE_ID = state.STATE_ID
left join PDP_DATA_LOCATION.GD_PC_MANUAL_REVISION manrev on manrev.REVISION_ID = pubass.REVISION_ID
left join PDP_DATA_LOCATION.GD_PC_LINE_OF_BUSINESS lob on lob.LINE_ID = pubass.LINE_ID
left join PDP_DATA_LOCATION.GD_PC_LINE_VERSION lobv on lobv.LINE_VERSION_ID = pubass.LINE_VERSION_ID

SELECT * FROM PDP_DATA_LOCATION.SA_PC_PUBLICATION_ASSIGNMENT sppa 

SELECT count(*)
FROM PDP_DATA_LOCATION.GD_PC_PUBLICATION_ASSIGNMENT gppa
WHERE gppa.LINE_ID IS NOT NULL AND gppa.F_LINE_OF_BUSINESS IS NOT NULL AND gppa.F_MANUAL_REVISION IS NOT NULL

-- test DATA 
SELECT * FROM GD_FD_LINE

SELECT * 
FROM GD_PC_FORM_SERIES gpfs 
WHERE NAME LIKE '%Test%'

SELECT *
FROM GD_PC_FORM gpf 
WHERE gpf.PC_NUMBER = 'TF 1000 01 01'
