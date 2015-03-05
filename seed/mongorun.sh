#!/bin/sh


# Initialize a mongo data folder and logfile
mkdir -p /data/db
touch /data/db/mongodb.log

# Start mongodb with logging
# --logpath    Without this mongod will output all log information to the standard output.
# --logappend  Ensure mongod appends new entries to the end of the logfile. We create it first so that the below tail always finds something
/usr/bin/mongod  --smallfiles --quiet --logpath /data/db/mongodb.log --logappend &

# Wait until mongo logs that it's ready (or timeout after 60s)
COUNTER=0
grep -q 'waiting for connections on port' /data/db/mongodb.log
while [[ $? -ne 0 && $COUNTER -lt 60 ]] ; do
    sleep 2
    let COUNTER+=2
    echo "Waiting for mongo to initialize... ($COUNTER seconds so far)"
    grep -q 'waiting for connections on port' /data/db/mongodb.log
done

# Now we know mongo is ready and can continue with other commands

#some point do something to chedk if already run; but for this demo just do it.
/usr/bin/mongoimport -d ordering -c catalog < /tmp/mongodb.catalog.json
/usr/bin/mongoimport -d ordering -c dealers < /tmp/mongodb.dealers.json
/usr/bin/mongoimport -d ordering -c quotes < /tmp/mongodb.quotes.json



