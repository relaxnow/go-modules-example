#!/bin/bash
mkdir -p /tmp/github.com/relaxnow &&
cp -Rf ../go-modules-example /tmp/github.com/relaxnow/ &&
cd /tmp/github.com/relaxnow/go-modules-example/ &&
go mod vendor &&
cd ../../ &&
echo '{"MainRoot": "relaxnow/go-modules-example"}' > veracode.json &&
cd ../ &&
zip -rq go-modules-example-repackaged.zip github.com
