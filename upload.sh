#!/bin/sh
echo $0: uploading $1, $2 and $3

# Upload files with a temporary name then re-name to the original name.
# This script requires three arguments!

HOST='ftp.yorkshiredales.sc'
USER='webcam@yorkshiredales.sc'
PASSWD='hfg756@Ydsc'

# Unfortunately FTP doesn't support multi-file renames
TMP1="${1}.tmp"
TMP2="${2}.tmp"
TMP3="${3}.tmp"

# First rename the files
mv $1 $TMP1
mv $2 $TMP2
mv $3 $TMP3

# Now upload and rename remotely, -p is passive mode to work behind firewall etc.
ftp -p -n $HOST <<END_SCRIPT
quote USER $USER
quote PASS $PASSWD
binary
prompt n
mput *.tmp
rename $TMP1 $1
rename $TMP2 $2
rename $TMP3 $3
quit
END_SCRIPT
exit 0

