export log_date=`(date +%Y_%m_%d_%H_%M_%S)`

#                                                                                                 +-------------------> Destination
#                         +-------> Source IP and Path                                            |
#                         |                                                                       |
rsync -azvrh --progress 0.0.0.0:/uxx/app/oracle/fast_recovery_area/xxxxxxxxx/archivelog /uxx/app/oracle/fast_recovery_area/xxxxxxxxx

sleep 30

#                       +-------> Recover script                    +------------------> Storing recover script log
#                       |                                           |
/bin/bash /path_to_scripts_recover.sh >> /path_to_log_arch_info_$log_date.log
sleep 10
prod_value=`cat path_to_log_arch_info_$log_date.log | grep -i PROD`
dr_value=`cat path_to_log_arch_info_$log_date.log | grep "^DR"`
echo -e "Subject: DR Database Sync Status \n$prod_value \n$dr_value" | sendmail xyz@abc.com,izhar@abc.com,
exit;
