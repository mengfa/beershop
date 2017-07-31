CarrierWave.configure do |config|
  config.storage = :qiniu

  config.qiniu_access_key = ENV["uqszP7yoAE0LhJbwGCChAt8lDn9cIth1KhPnBER6"]
  config.qiniu_secret_key = ENV["EsFgptopnB9Pqrg7UC2-OKVDcXESeGjEtNBIea4t"]
  config.qiniu_bucket = ENV["beershop"]
  config.qiniu_bucket_domain = ENV["otag1wysd.bkt.clouddn.com"]

  # config.qiniu_access_key = ENV["qiniu_access_key"]
  # config.qiniu_secret_key = ENV["qiniu_secret_key"]
  # config.qiniu_bucket = ENV["qiniu_bucket"]
  # config.qiniu_bucket_domain = ENV["qiniu_bucket_domain"]
  config.qiniu_block_size = 4*1024*1024
  config.qiniu_protocol = "http"
  config.qiniu_up_host = "http://up-z1.qiniu.com" #选择不同的区域时，"up.qiniug.com" 不同
end
