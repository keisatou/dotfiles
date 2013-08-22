log_level                :info
log_location             STDOUT
node_name                'keisatou'
client_key               '/Users/keisatou/.chef/keisatou.pem'
validation_client_name   'chef-validator'
validation_key           '/etc/chef-server/chef-validator.pem'
chef_server_url          'https://satou-no-MacBook-Air.local:443'
syntax_check_cache_path  '/Users/keisatou/.chef/syntax_check_cache'
knife[:solo_path] = '/tmp/chef-solo'
cookbook_path            './cookbooks'
