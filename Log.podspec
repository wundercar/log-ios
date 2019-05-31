Pod::Spec.new do |s|
  s.name                                = "Log"
  s.version                             = "1.0"
  s.summary                             = "Log library"
  s.description  = <<-EOS
  Log library with log levels done right
  EOS
  s.homepage                            = "https://github.com/wundercar/log-ios"
  s.social_media_url                    = "https://www.wundermobility.com/"
  s.ios.deployment_target               = '10.0'
  s.source                              = { :git => "https://github.com/wundercar/log-ios" }
  s.swift_version                       = '5.0'
  s.cocoapods_version                   = '>= 1.6.0'

  s.source_files                        = "Log/**/*.{h,m,swift}"
  
  s.framework = "Foundation"
  s.framework = "UIKit"
end
