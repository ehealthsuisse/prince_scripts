# ********************************************************************************
# 
# Prince script for PDF creation from an eHealth Suisse Wiki specification
# 
# Compatibility: Unix (OS X) 
# History:
# 20171024: Setting up shell script based on script from T. Schaller, medshare GmbH
# 
# ********************************************************************************

# Please do not change the lines below
d=$(date +%Y%m%d)
echo $d

# This is for customizing this script for the given specification
Source="http://e-health-wiki.ch/index.php/Ehscda:CDA-CH_2017_(specification)"
Destination="CDA-CH_de_V$d.pdf"

# Please do not change the lines below
prince $Source -v --script makeruler.js --javascript -o $Destination -s "http://e-health-wiki.ch/index.php?title=MediaWiki:Common.css&usemsgcache=yes&ctype=text%2Fcss&smaxage=18000&action=raw&maxage=18000"   -s "http://e-health-wiki.ch/index.php?title=-&action=raw&maxage=18000&gen=css"   -s "http://e-health-wiki.ch/index.php?title=MediaWiki:Geshi.css&usemsgcache=yes&action=raw&ctype=text/css&smaxage=18000" -s kprint3ohneruler.css