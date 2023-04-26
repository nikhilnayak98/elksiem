@load packages

@load tuning/json-logs
redef LogAscii::use_json = T;

redef Site::local_nets += {
    10.0.0.0/8,
    172.16.0.0/12,
    192.168.0.0/16
};

redef LongConnection::default_durations = LongConnection::Durations(1sec,5min,10min, 20min, 30min, 40min, 50min, 1hr, 3hr, 6hr, 9hr, 12hr, 24hrs, 3days);

# Enable RDP
@load base/protocols/rdp
@load base/frameworks/notice

@load zeek-cryptomining
# For use with zeek cyrpto mining plugin
redef Bitcoin::notice_miner_hosts=ALL_HOSTS;
redef Bitcoin::notice_pool_hosts=ALL_HOSTS;