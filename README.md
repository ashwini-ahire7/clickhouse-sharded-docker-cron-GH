# clickhouse-sharded-docker
```Creation of only Sharded Cluster using Docker Custom Image 

docker-compose down

docker build -t custom-clickhouse -f Dockerfile-clickhouse .

docker-compose up --build -d

docker ps

docker exec -it clickhouse02 clickhouse-client

clickhouse-client --host localhost --port 9002

docker ps -f name=clickhouse01


root@docker:~/inception_infra/clickhouse-sharded-docker-cron-GH# docker exec -it clickhouse02 /bin/bash
root@clickhouse02:/#
root@clickhouse02:/#
root@clickhouse02:/# crontab -l
* * * * * /usr/bin/python3 /usr/local/bin/collect_sys >> /var/log/cron.log 2>&1
root@clickhouse02:/#
root@clickhouse02:/#
root@clickhouse02:/# clickhouse-client
ClickHouse client version 23.3.1.2823 (official build).
Connecting to localhost:9000 as user default.
Connected to ClickHouse server version 23.3.1 revision 54462.

Warnings:
 * Linux is not using a fast clock source. Performance can be degraded. Check /sys/devices/system/clocksource/clocksource0/current_clocksource

clickhouse02 :)
clickhouse02 :)
clickhouse02 :) show databases;

SHOW DATABASES

Query id: 66ef2d6a-eeea-47a0-ab38-fbd7909c8c4f

┌─name───────────────┐
│ INFORMATION_SCHEMA │
│ default            │
│ information_schema │
│ system             │
└────────────────────┘

4 rows in set. Elapsed: 0.002 sec.
```

