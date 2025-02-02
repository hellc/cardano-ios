Pod::Spec.new do |s|

  s.swift_versions                      = '5.0'
  s.name                                = 'Cardano'
  s.version                             = '0.0.1'
  s.summary                             = 'Cardano Swift SDK'
  s.homepage                            = 'https://github.com/kxpone/cardano-swift'
  s.license                             = 'MIT'
  s.author                              = { '@hellc' => 'info@kxp.one' }
  s.social_media_url                    = 'https://twitter.com/kxpone'
  s.requires_arc                        = false
  s.ios.deployment_target               = '11.0'
                
  s.source                              = { :git => 'https://github.com/kxpone/cardano-swift.git', :branch => 'develop' }
                
  s.default_subspec                     = 'All'
  
  s.subspec 'All' do |all|
    all.dependency                      'Cardano/Core'
    all.dependency                      'Cardano/Rest'
  end
  
  s.subspec 'Core' do |core|
    core.source_files                   = 'Source/Cardano/Core/**/*.{swift}'
  end
  
  s.subspec 'Rest' do |rest|
    rest.source_files                   = 'Source/Cardano/Rest/**/*.{swift}'
  end
  
  s.dependency 'CatalystNet', :git => 'https://github.com/hellc/CatalystNet.git', :commit => 'e4fc298e83b4dc6a28331343ea5d3e0b87f1466a'
end
