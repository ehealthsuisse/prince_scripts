@echo off
REM ********************************************************************************
REM 
REM Prince script for PDF creation from an eHealth Suisse Wiki specification
REM 
REM Compatibility: Windows OS (adjust your Path variable in order to have the access to prince.exe)
REM 
REM History:
REM 20171009: Initial commit by Tony Schaller, medshare GmbH
REM 20171019: Timestamp calculation before destination variable setting (by Tony Schaller, medshare GmbH)
REM 
REM ********************************************************************************

REM Please do not change the lines below
SET DD=%date:~0,2%
SET MM=%date:~3,2%
SET YY=%date:~8,2%
SET YYYY=%date:~6,4%
SET DT=%YYYY%%MM%%DD%

REM This is for customizing this script for the given specification
SET Source=http://e-health-wiki.ch/index.php/Ehscda:Artdecor-governance
SET Destination=Art-Decor_Governance_en_V%DT%.pdf

REM Please do not change the lines below
prince.exe "%Source%" -v --script makeruler.js --javascript -o %Destination% -s "http://e-health-wiki.ch/index.php?title=MediaWiki:Common.css&usemsgcache=yes&ctype=text%2Fcss&smaxage=18000&action=raw&maxage=18000"   -s "http://e-health-wiki.ch/index.php?title=-&action=raw&maxage=18000&gen=css"   -s "http://e-health-wiki.ch/index.php?title=MediaWiki:Geshi.css&usemsgcache=yes&action=raw&ctype=text/css&smaxage=18000" -s kprint3ohneruler.css