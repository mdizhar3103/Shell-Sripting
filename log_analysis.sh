# wget https://raw.githubusercontent.com/elastic/examples/master/Common%20Data%20Formats/apache_logs/apache_logs
# or
# curl https://raw.githubusercontent.com/elastic/examples/master/Common%20Data%20Formats/apache_logs/apache_logs --output apace_logs.log
# cat apache_logs.log | awk '{ print ($9)}' | sort | uniq -c

# count unique IPs
cat apache_logs.log | awk '{ print ($1)}' | sort | uniq -c

# count datetime
cat apache_logs.log | awk '{ print ($4)}' | sort | uniq -c

# count timezones
cat apache_logs.log | awk '{ print ($5)}' | sort | uniq -c

# count webrequest methods
cat apache_logs.log | awk '{ print ($6)}' | sort | uniq -c

# count url headers
cat apache_logs.log | awk '{ print ($7)}' | sort | uniq -c

# count HTTP/ver
cat apache_logs.log | awk '{ print ($8)}' | sort | uniq -c

# count web status codes
cat apache_logs.log | awk '{ print ($9)}' | sort | uniq -c

