require 'carrierwave/storage/ucloud'
require 'carrierwave/ucloud/configuration'
require 'carrierwave/ucloud/digest'
CarrierWave.configure do |config|
  config.storage_engines.merge!({ucloud: 'CarrierWave::Storage::UCloud'})
end

CarrierWave::Uploader::Base.send(:include, CarrierWave::UCloud::Configuration)