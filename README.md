# CarrierWave for [UCloud (UCloud对象存储)]

This gem adds support for [ucloud.com](https://www.ucloud.cn) to [CarrierWave](https://github.com/jnicklas/carrierwave/)

## Installation

```ruby
gem 'carrierwave'
gem 'carrierwave-ucloud'
```

## Configuration

You'll need to configure the to use this in config/initializes/carrierwave.rb

```ruby
 CarrierWave.configure do |config|
  config.storage = :ucloud
  config.public_key = "xxxxxx"
  config.private_key = "xxxxxx"
  config.ucloud_bucket = "my_bucket"
  config.ucloud_bucket_host = "https://my_bucket.gd.ufileos.com"
  config.ucloud_cdn_host = "https://my_bucket.ufile.ucloud.com.cn"
end
