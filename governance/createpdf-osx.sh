# ********************************************************************************
# 
# Prince script for PDF creation from an eHealth Suisse Wiki specification
# 
# Compatibility: Unix (OS X) 
# History:
# 20171024: Setting up shell script based on script from T. Schaller, medshare GmbH
# 20180418: Germand and French output, unique CSS file for styling and localized CSS
# for German/French output from Johannes Gnaegi, eHealth Suisse
# 20180508: Update file name accordingame scheme ehealth suisse website (by Johannes Gnägi, eHealth Suisse)
# 
# ********************************************************************************

# Please do not change the lines below
d=$(date +%y%m%d)
echo $d
masterStyle=../eheathwiki_pdfstyle.css
rulerScript=../makeruler.js

# ******************
# GERMAN
# This is for customizing this script for the given specification
Source="http://e-health-wiki.ch/index.php/Ehscda:Artdecor-governance"
Destination=$d"_Art-Decor_Governance_en.pdf"
englishStyle=../lang_en.css


# Please do not change the lines below
prince $Source -v --script $rulerScript --javascript -o $Destination -s "http://e-health-wiki.ch/index.php?title=MediaWiki:Common.css&usemsgcache=yes&ctype=text%2Fcss&smaxage=18000&action=raw&maxage=18000"   -s "http://e-health-wiki.ch/index.php?title=-&action=raw&maxage=18000&gen=css"   -s "http://e-health-wiki.ch/index.php?title=MediaWiki:Geshi.css&usemsgcache=yes&action=raw&ctype=text/css&smaxage=18000" -s $englishStyle -s $masterStyle