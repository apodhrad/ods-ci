#!/bin/sh
# Redirecting stdout/stderr of must-gather to a file, as it fills up the
# process buffer and prevents the script from running further.
oc adm must-gather --image=quay.io/modh/must-gather@sha256:1bd8735d715b624c1eaf484454b0d6d400a334d8cbba47f99883626f36e96657 &> must-gather-results.txt

if [ $? -eq 0 ]
then
    echo "SUCCESS: must-gather logs can be found in repo must-gather-local.*"
else
    echo "FAIL : Unable to get must-gather logs"
fi
