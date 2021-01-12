#!/bin/bash

PARA="-h $HOST -u $USER -p $PASSWORD -P $PORT --start-file $START_FILE --stop-file $STOP_FILE"
[ -n "$START_POSITION" ] && {
    PARA="$PARA --start-position $START_POSITION"
}
[ -n "$STOP_POSITION" ] && {
    PARA="$PARA --stop-position $STOP_POSITION"
}
[ "$STOP_NEVER" == "True" ] && {
    PARA="$PARA --stop-never"
}
[ "$ONLY_DML" == "True" ] && {
    PARA="$PARA --only-dml"
}
[ "$NO_PK" == "True" ] && {
    PARA="$PARA -K"
}
[ "$FLASHBACK" == "True" ] && {
    PARA="$PARA -B"
}

echo -e "命令:python3 binlog2sql.py $PARA"

cd binlog2sql
# python3 binlog2sql.py -h $HOST -u $USER -p $PASSWORD -P $PORT --start-file $START_FILE --start-position $START_POSITION --stop-file $STOP_FILE --stop-position $STOP_POSITION \
# --start-datetime "$START_TIME" --stop-datetime "$STOP_TIME" --stop-never $STOP_NEVER -d $DATABASES -t $TABLES --only-dml $ONLY_DML --sql-type $SQL_TYPE -K $NO_PK -B $FLASHBACK \
# --back-interval $BACK_INTERVAL
python3 binlog2sql.py $PARA --start-datetime "$START_TIME" --stop-datetime "$STOP_TIME"