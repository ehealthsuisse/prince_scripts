# ********************************************************************************
# 
# Prince script for PDF creation from an eHealth Suisse Wiki specification
# 
# Compatibility: Unix (OS X) 
# History:
# 180628: Shell script to create BAG conformant documents for the "EPDV-EDI Ergaenzungen" (by Johannes Gnägi, eHealth Suisse)
# 
# ********************************************************************************

# Please do not change the lines below
d=$(date +%y%m%d)
echo $d
masterStyle=bagepdvedi_pdfstyle.css
rulerScript=../makeruler.js
#language settings
germanStyle=../lang_de.css
#file specific settings
fileStyle=emed.css


Source="http://e-health-wiki.ch/index.php/epdv:EMedikation"
Destination=$d"_epdv_anhang4_ergaenzung_emedikation.pdf"

# Please do not change the lines below
prince $Source -v --script $rulerScript --javascript -o $Destination -s "http://e-health-wiki.ch/index.php?title=MediaWiki:Common.css&usemsgcache=yes&ctype=text%2Fcss&smaxage=18000&action=raw&maxage=18000"   -s "http://e-health-wiki.ch/index.php?title=-&action=raw&maxage=18000&gen=css"   -s "http://e-health-wiki.ch/index.php?title=MediaWiki:Geshi.css&usemsgcache=yes&action=raw&ctype=text/css&smaxage=18000" -s $germanStyle -s $fileStyle -s $masterStyle