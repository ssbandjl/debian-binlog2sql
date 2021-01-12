#!/bin/bash

cd binlog2sql
python3 binlog2sql.py -h $HOST -u $USER -p $PASSWORD -P $PORT --start-file $START_FILE --start-position $START_POSITION --stop-file $STOP_FILE --stop-position $STOP_POSITION \
--start-datetime $START_TIME --stop-datetime $STOP_TIME --stop-never $STOP_NEVER -d $DATABASES -t $TABLES --only-dml $ONLY_DML --sql-type $SQL_TYPE -K $NO_PK -B $FLASHBACK \
--back-interval $BACK_INTERVAL