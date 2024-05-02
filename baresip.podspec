Pod::Spec.new do |s|
    s.name        = "baresip"
    s.version     = "2.0.0"
    s.author      = { "Catelt" => "hovanduy0501@gmail.com" }
    s.homepage         = 'https://github.com/Catelt/baresip-ios'
    s.summary     = "Cocoapod for baresip."
    s.source      = { :git => "https://github.com/Catelt/baresip-ios.git", :tag => "#{s.version}" }
    s.platform    = :ios, '6.0'
    s.license     = { :type => "BSD", :file => "LICENSE" }
    s.description = "Baresip is a modular SIP User-Agent with audio and video support"
    s.static_framework = true

    s.source_files        = 'contrib/aarch64/include/**', 
                            'contrib/aarch64/include/re/**', 
                            'contrib/aarch64/include/rem/**'
    s.public_header_files = 'contrib/aarch64/include/**', 
                            'contrib/aarch64/include/re/**', 
                            'contrib/aarch64/include/rem/**'
  
    s.preserve_paths      = 'contrib/aarch64/include/**/*', 
                            'contrib/aarch64/include/re/**/*', 
                            'contrib/aarch64/include/rem/**/*'
  
    s.vendored_libraries  = 'contrib/fat/lib/*.a'
  
    header_search_paths   = '"$(PODS_ROOT)/baresip/contrib/aarch64/include"', 
                            '"$(PODS_ROOT)/baresip/contrib/aarch64/re"', 
                            '"$(PODS_ROOT)/baresip/contrib/aarch64/rem"'

  
    s.xcconfig            = {'HEADER_SEARCH_PATHS'          => header_search_paths.join(' '),
                             'GCC_PREPROCESSOR_DEFINITIONS' => 'PJ_AUTOCONF=1'}
  
    s.frameworks          = 'CFNetwork', 'AudioToolbox', 'AVFoundation', 'CoreMedia', 'SystemConfiguration', 'CoreVideo'
    s.libraries           = 'resolv.9'
    s.requires_arc        = false
  end