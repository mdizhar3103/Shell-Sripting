# Archive Log Shipping 
export ORACLE_SID=xxxxxxxxxx
export ORACLE_HOME='/oracle_path'
arch="v\$archived_log"
prod=`/path_to_/bin/sqlplus -silent username/passwd@//db_Server_ip:1521/service_name as sysdba <<SQL_QUERY
set pagesize 0 feedback off verify off heading off echo off;
SELECT max(sequence#) FROM ${arch} where archived='YES' group by thread# , archived ;
exit
SQL_QUERY`

echo "-------------------------------"
echo "Initial Value: $prod"
new_prod=`echo $prod | sed -e 's/^[[:space:]]*//'`
echo "New Value: $new_prod"

# Recovery from Archive Log 
/path_to_/bin/sqlplus -silent -s /nolog <<EOF
CONN / AS SYSDBA
RECOVER DATABASE USING BACKUP CONTROLFILE until cancel;
auto
exit;
EOF
dr=`/path_to_/bin/sqlplus -silent -s /nolog <<EOF
CONN / AS SYSDBA
set pagesize 0 feedback off verify off heading off echo off;
SELECT max(sequence#) FROM ${arch} where archived='YES' group by thread# , archived ;
exit;
EOF`

echo "-------------------------------"
echo "Initial Value: $dr"
new_dr=`echo $dr | sed -e 's/^[[:space:]]*//'`
echo "New Value: $new_dr"
