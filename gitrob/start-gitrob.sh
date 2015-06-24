#!/bin/bash

echo "sql_connection_uri: postgres://gitrob:@$PSQL_PORT_5432_TCP_ADDR:$PSQL_PORT_5432_TCP_PORT/gitrob" >> /root/.gitrobrc

echo -e "
Gitrob is designed for security professionals. If you use any information
found through this tool for malicious purposes that are not authorized by
the organization, you are violating the terms of use and license of this
tool. By using this application, you agree to the terms of use and that you will use
this tool for lawful purposes only."

: "${ORGANIZATION:=github}" # the github organisation

gitrob -b 0.0.0.0 --no-color -o $ORGANIZATION
