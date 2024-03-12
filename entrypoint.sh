#!/bin/bash

# Start the cron service in the background
cron

# Start the ClickHouse service in the foreground
# This should be the last command and it will keep the container alive
su -s /bin/bash clickhouse -c '/usr/bin/clickhouse-server --config-file=/etc/clickhouse-server/config.xml'

