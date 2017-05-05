Gem::Specification.new do |s|
  s.name        = 'carrierwave-ucloud'
  s.version     = '0.0.1'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Breeze Yang']
  s.email       = ['breezeWuna@gmail.com']
  s.homepage    = 'https://github.com/breeze-yang/carrierwave-ucloud'
  s.summary     = %q{UCloud Storage support for CarrierWave}
  s.description = %q{UCloud Storage support for CarrierWave}
  s.files         = Dir.glob('lib/**/*')
  s.require_paths = ['lib']
  s.add_dependency 'carrierwave', ['~> 1.0']
  s.add_dependency 'faraday', ['~> 0.11.0']
end