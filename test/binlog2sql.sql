root@test-mysql-0:/var/lib/mysql# mysqlbinlog mysql-master-bin.000008 -vvv
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=1*/;
/*!50003 SET @OLD_COMPLETION_TYPE=@@COMPLETION_TYPE,COMPLETION_TYPE=0*/;
DELIMITER /*!*/;
# at 4
#201229 23:29:11 server id 1  end_log_pos 123 CRC32 0x1efb9ef6  Start: binlog v 4, server v 5.7.29-log created 201229 23:29:11
# Warning: this binlog is either in use or was not closed properly.
BINLOG '
x7vrXw8BAAAAdwAAAHsAAAABAAQANS43LjI5LWxvZwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAEzgNAAgAEgAEBAQEEgAAXwAEGggAAAAICAgCAAAACgoKKioAEjQA
Afae+x4=
'/*!*/;
# at 123
#201229 23:29:11 server id 1  end_log_pos 194 CRC32 0x5391423b  Previous-GTIDs
# bc0382aa-249c-11eb-9429-3ad0891718a8:12
# at 194
#201230  9:40:27 server id 1  end_log_pos 259 CRC32 0x6123756d  GTID    last_committed=0        sequence_number=1       rbr_only=no
SET @@SESSION.GTID_NEXT= 'bc0382aa-249c-11eb-9429-3ad0891718a8:13'/*!*/;
# at 259
#201230  9:40:27 server id 1  end_log_pos 359 CRC32 0x31873a4f  Query   thread_id=61920 exec_time=0     error_code=0
SET TIMESTAMP=1609321227/*!*/;
SET @@session.pseudo_thread_id=61920/*!*/;
SET @@session.foreign_key_checks=1, @@session.sql_auto_is_null=0, @@session.unique_checks=1, @@session.autocommit=1/*!*/;
SET @@session.sql_mode=1436549152/*!*/;
SET @@session.auto_increment_increment=1, @@session.auto_increment_offset=1/*!*/;
/*!\C utf8mb4 *//*!*/;
SET @@session.character_set_client=45,@@session.collation_connection=45,@@session.collation_server=33/*!*/;
SET @@session.lc_time_names=0/*!*/;
SET @@session.collation_database=DEFAULT/*!*/;
create database mytest
/*!*/;
# at 359
#201230  9:41:07 server id 1  end_log_pos 424 CRC32 0x5630b8b8  GTID    last_committed=1        sequence_number=2       rbr_only=no
SET @@SESSION.GTID_NEXT= 'bc0382aa-249c-11eb-9429-3ad0891718a8:14'/*!*/;
# at 424
#201230  9:41:07 server id 1  end_log_pos 690 CRC32 0x1c882fca  Query   thread_id=61974 exec_time=1     error_code=0
use `mytest`/*!*/;
SET TIMESTAMP=1609321267/*!*/;
CREATE TABLE `test` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `age` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
/*!*/;
# at 690
#201230  9:41:08 server id 1  end_log_pos 755 CRC32 0xd72a77a9  GTID    last_committed=2        sequence_number=3       rbr_only=yes
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
SET @@SESSION.GTID_NEXT= 'bc0382aa-249c-11eb-9429-3ad0891718a8:15'/*!*/;
# at 755
#201230  9:41:08 server id 1  end_log_pos 829 CRC32 0xa24a6b9c  Query   thread_id=61974 exec_time=0     error_code=0
SET TIMESTAMP=1609321268/*!*/;
BEGIN
/*!*/;
# at 829
#201230  9:41:08 server id 1  end_log_pos 882 CRC32 0xa7275907  Table_map: `mytest`.`test` mapped to number 537
# at 882
#201230  9:41:08 server id 1  end_log_pos 941 CRC32 0x27756be1  Write_rows: table id 537 flags: STMT_END_F

BINLOG '
NEvsXxMBAAAANQAAAHIDAAAAABkCAAAAAAEABm15dGVzdAAEdGVzdAADCAMPAv0CBgdZJ6c=
NEvsXx4BAAAAOwAAAK0DAAAAABkCAAAAAAEAAgAD//gBAAAAAAAAABYAAAAJAOWwj+aXi+mUi+Fr
dSc=
'/*!*/;
### INSERT INTO `mytest`.`test`
### SET
###   @1=1 /* LONGINT meta=0 nullable=0 is_null=0 */
###   @2=22 /* INT meta=0 nullable=1 is_null=0 */
###   @3='小旋锋' /* VARSTRING(765) meta=765 nullable=1 is_null=0 */
# at 941
#201230  9:41:08 server id 1  end_log_pos 972 CRC32 0xa47dda71  Xid = 414374
COMMIT/*!*/;
# at 972
#201230  9:41:08 server id 1  end_log_pos 1037 CRC32 0xdd75d63b         GTID    last_committed=3        sequence_number=4       rbr_only=yes
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
SET @@SESSION.GTID_NEXT= 'bc0382aa-249c-11eb-9429-3ad0891718a8:16'/*!*/;
# at 1037
#201230  9:41:08 server id 1  end_log_pos 1111 CRC32 0x391be116         Query   thread_id=61974 exec_time=0     error_code=0
SET TIMESTAMP=1609321268/*!*/;
BEGIN
/*!*/;
# at 1111
#201230  9:41:08 server id 1  end_log_pos 1164 CRC32 0xb1945cdd         Table_map: `mytest`.`test` mapped to number 537
# at 1164
#201230  9:41:08 server id 1  end_log_pos 1245 CRC32 0x04c8fe92         Update_rows: table id 537 flags: STMT_END_F

BINLOG '
NEvsXxMBAAAANQAAAIwEAAAAABkCAAAAAAEABm15dGVzdAAEdGVzdAADCAMPAv0CBt1clLE=
NEvsXx8BAAAAUQAAAN0EAAAAABkCAAAAAAEAAgAD///4AQAAAAAAAAAWAAAACQDlsI/ml4vplIv4
AQAAAAAAAAAWAAAABgB3aGlybHmS/sgE
'/*!*/;
### UPDATE `mytest`.`test`
### WHERE
###   @1=1 /* LONGINT meta=0 nullable=0 is_null=0 */
###   @2=22 /* INT meta=0 nullable=1 is_null=0 */
###   @3='小旋锋' /* VARSTRING(765) meta=765 nullable=1 is_null=0 */
### SET
###   @1=1 /* LONGINT meta=0 nullable=0 is_null=0 */
###   @2=22 /* INT meta=0 nullable=1 is_null=0 */
###   @3='whirly' /* VARSTRING(765) meta=765 nullable=1 is_null=0 */
# at 1245
#201230  9:41:08 server id 1  end_log_pos 1276 CRC32 0xbe729803         Xid = 414375
COMMIT/*!*/;
# at 1276
#201230  9:41:08 server id 1  end_log_pos 1341 CRC32 0x96d1f67d         GTID    last_committed=4        sequence_number=5       rbr_only=yes
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
SET @@SESSION.GTID_NEXT= 'bc0382aa-249c-11eb-9429-3ad0891718a8:17'/*!*/;
# at 1341
#201230  9:41:08 server id 1  end_log_pos 1415 CRC32 0x0a215e4e         Query   thread_id=61974 exec_time=0     error_code=0
SET TIMESTAMP=1609321268/*!*/;
BEGIN
/*!*/;
# at 1415
#201230  9:41:08 server id 1  end_log_pos 1468 CRC32 0x86b8ebb0         Table_map: `mytest`.`test` mapped to number 537
# at 1468
#201230  9:41:08 server id 1  end_log_pos 1524 CRC32 0x4d29e89a         Delete_rows: table id 537 flags: STMT_END_F

BINLOG '
NEvsXxMBAAAANQAAALwFAAAAABkCAAAAAAEABm15dGVzdAAEdGVzdAADCAMPAv0CBrDruIY=
NEvsXyABAAAAOAAAAPQFAAAAABkCAAAAAAEAAgAD//gBAAAAAAAAABYAAAAGAHdoaXJseZroKU0=
'/*!*/;
### DELETE FROM `mytest`.`test`
### WHERE
###   @1=1 /* LONGINT meta=0 nullable=0 is_null=0 */
###   @2=22 /* INT meta=0 nullable=1 is_null=0 */
###   @3='whirly' /* VARSTRING(765) meta=765 nullable=1 is_null=0 */
# at 1524
#201230  9:41:08 server id 1  end_log_pos 1555 CRC32 0x5e34ebd9         Xid = 414376
COMMIT/*!*/;
SET @@SESSION.GTID_NEXT= 'AUTOMATIC' /* added by mysqlbinlog */ /*!*/;
DELIMITER ;
# End of log file
/*!50003 SET COMPLETION_TYPE=@OLD_COMPLETION_TYPE*/;
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=0*/;